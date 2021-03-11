use super::{PageTable, PageTableEntry, PTEFlags};
use super::{VirtPageNum, VirtAddr, PhysPageNum, PhysAddr};
use super::{FrameTracker, frame_alloc, frame_left};
use super::{VPNRange, StepByOne};
use alloc::collections::BTreeMap;
use alloc::vec::Vec;
use riscv::register::satp;
use alloc::sync::Arc;
use lazy_static::*;
use spin::Mutex;
use crate::config::{
    MEMORY_END,
    PAGE_SIZE,
    PAGE_SIZE_BITS,
    TRAMPOLINE,
    TRAP_CONTEXT,
    USER_STACK_SIZE,
};

extern "C" {
    fn stext();
    fn etext();
    fn srodata();
    fn erodata();
    fn sdata();
    fn edata();
    fn sbss_with_stack();
    fn ebss();
    fn ekernel();
    fn strampoline();
}

//KERNEL_SPACE是每一个app有一份的
//但是问题来了：怎么取得特定的app的KERNEL_SPACE？
//在进程控制块里面，每一个进程都有一个对应的KERNEL_SPACE
lazy_static! {
    pub static ref KERNEL_SPACE: Arc<Mutex<MemorySet>> = Arc::new(Mutex::new(
        MemorySet::new_kernel()
    ));
}

pub struct MemorySet {
    page_table: PageTable,
    areas: Vec<MapArea>,
}

fn convert_usize_to_permission(port: usize)->Option<MapPermission>{
    match port{
        1 => Some(MapPermission::R),
        2 => Some(MapPermission::W),
        3 => Some(MapPermission::R | MapPermission::W),
        4 => Some(MapPermission::X),
        5 => Some(MapPermission::X | MapPermission::R),
        6 => Some(MapPermission::X | MapPermission::W),
        7 => Some(MapPermission::X | MapPermission::W | MapPermission::R),
        _ => None
    }
}

impl MemorySet {
    pub fn new_bare() -> Self {
        Self {
            page_table: PageTable::new(),
            areas: Vec::new(),
        }
    }
    pub fn token(&self) -> usize {
        self.page_table.token()
    }

    /// 假设已经分配好了物理页面，建立一个对应关系
    /// 这个函数只能在已经申请完空间才能调用
    pub fn insert_framed_area(&mut self, start_va: VirtAddr, end_va: VirtAddr, permission: MapPermission) {
        self.push(MapArea::new(
            start_va,
            end_va,
            MapType::Framed,
            permission,
        ), None);
    }
    fn push(&mut self, mut map_area: MapArea, data: Option<&[u8]>) {
        map_area.map(&mut self.page_table);
        if let Some(data) = data {
            map_area.copy_data(&mut self.page_table, data);
        }
        self.areas.push(map_area);
    }
    /// Mention that trampoline is not collected by areas.
    fn map_trampoline(&mut self) {
        self.page_table.map(
            VirtAddr::from(TRAMPOLINE).into(),
            PhysAddr::from(strampoline as usize).into(),
            PTEFlags::R | PTEFlags::X,
        );
    }
    /// Without kernel stacks.
    pub fn new_kernel() -> Self {
        let mut memory_set = Self::new_bare();
        // map trampoline
        memory_set.map_trampoline();
        // map kernel sections
        println!(".text [{:#x}, {:#x})", stext as usize, etext as usize);
        println!(".rodata [{:#x}, {:#x})", srodata as usize, erodata as usize);
        println!(".data [{:#x}, {:#x})", sdata as usize, edata as usize);
        println!(".bss [{:#x}, {:#x})", sbss_with_stack as usize, ebss as usize);
        println!("mapping .text section");
        memory_set.push(MapArea::new(
            (stext as usize).into(),
            (etext as usize).into(),
            MapType::Identical,
            MapPermission::R | MapPermission::X,
        ), None);
        println!("mapping .rodata section");
        memory_set.push(MapArea::new(
            (srodata as usize).into(),
            (erodata as usize).into(),
            MapType::Identical,
            MapPermission::R,
        ), None);
        println!("mapping .data section");
        memory_set.push(MapArea::new(
            (sdata as usize).into(),
            (edata as usize).into(),
            MapType::Identical,
            MapPermission::R | MapPermission::W,
        ), None);
        println!("mapping .bss section");
        memory_set.push(MapArea::new(
            (sbss_with_stack as usize).into(),
            (ebss as usize).into(),
            MapType::Identical,
            MapPermission::R | MapPermission::W,
        ), None);
        println!("mapping physical memory");
        memory_set.push(MapArea::new(
            (ekernel as usize).into(),
            MEMORY_END.into(),
            MapType::Identical,
            MapPermission::R | MapPermission::W,
        ), None);
        memory_set
    }
    /// Include sections in elf and trampoline and TrapContext and user stack,
    /// also returns user_sp and entry point.
    pub fn from_elf(elf_data: &[u8]) -> (Self, usize, usize) {
        let mut memory_set = Self::new_bare();
        // map trampoline
        memory_set.map_trampoline();
        // map program headers of elf, with U flag
        let elf = xmas_elf::ElfFile::new(elf_data).unwrap();
        let elf_header = elf.header;
        let magic = elf_header.pt1.magic;
        assert_eq!(magic, [0x7f, 0x45, 0x4c, 0x46], "invalid elf!");
        let ph_count = elf_header.pt2.ph_count();
        let mut max_end_vpn = VirtPageNum(0);
        for i in 0..ph_count {
            let ph = elf.program_header(i).unwrap();
            if ph.get_type().unwrap() == xmas_elf::program::Type::Load {
                let start_va: VirtAddr = (ph.virtual_addr() as usize).into();
                let end_va: VirtAddr = ((ph.virtual_addr() + ph.mem_size()) as usize).into();
                let mut map_perm = MapPermission::U;
                let ph_flags = ph.flags();
                if ph_flags.is_read() { map_perm |= MapPermission::R; }
                if ph_flags.is_write() { map_perm |= MapPermission::W; }
                if ph_flags.is_execute() { map_perm |= MapPermission::X; }
                let map_area = MapArea::new(
                    start_va,
                    end_va,
                    MapType::Framed,
                    map_perm,
                );
                max_end_vpn = map_area.vpn_range.get_end();
                memory_set.push(
                    map_area,
                    Some(&elf.input[ph.offset() as usize..(ph.offset() + ph.file_size()) as usize])
                );
            }
        }
        // map user stack with U flags
        let max_end_va: VirtAddr = max_end_vpn.into();
        let mut user_stack_bottom: usize = max_end_va.into();
        // guard page
        user_stack_bottom += PAGE_SIZE;
        let user_stack_top = user_stack_bottom + USER_STACK_SIZE;
        memory_set.push(MapArea::new(
            user_stack_bottom.into(),
            user_stack_top.into(),
            MapType::Framed,
            MapPermission::R | MapPermission::W | MapPermission::U,
        ), None);
        // map TrapContext
        memory_set.push(MapArea::new(
            TRAP_CONTEXT.into(),
            TRAMPOLINE.into(),
            MapType::Framed,
            MapPermission::R | MapPermission::W,
        ), None);
        (memory_set, user_stack_top, elf.header.pt2.entry_point() as usize)
    }
    pub fn activate(&self) {
        let satp = self.page_table.token();
        unsafe {
            satp::write(satp);
            llvm_asm!("sfence.vma" :::: "volatile");
        }
    }
    pub fn translate(&self, vpn: VirtPageNum) -> Option<PageTableEntry> {
        self.page_table.translate(vpn)
    }

    pub fn v2p(&self,va:VirtAddr)->Option<PhysAddr>{
        let vpn = va.floor();
        let page_offset = va.page_offset();
        // let pte = self.translate(vpn);
        if let Some(pte) = self.translate(vpn){
            return Some(PhysAddr(((usize::from(pte.ppn())<< PAGE_SIZE_BITS) + page_offset) as usize));
        }
        return None;
    }

    pub fn unmap_the_chosen_area(&mut self,range: VPNRange)->isize{
        for area in &mut self.areas{
            let size = area.unmap_the_chosen_area(&mut self.page_table,range) as isize;
            if size != -1 {
                return size;
            }
        }
        return -1 as isize;
    }

    pub fn mmap(&mut self,start: usize, len: usize, port: usize) -> isize{
        //要检查的内容：
        //1. 物理内存还够用吗
        //2. 这个地址范围内是不是有哪些已经被映射过了
    
        if start % PAGE_SIZE != 0 {
            return -1 as isize;
        }
        if len == 0 {
            warn!("in mmap...number=0");
            return 0 as isize;
        }
        let number = ((len - 1 + PAGE_SIZE) /PAGE_SIZE )as usize;
        //向上取整,表示会用到几个page
    
        //以防万一，再检查一遍读写权限问题
        if (port & !0x7 != 0)||(port & 0x7 == 0) {
            return -1 as isize;
        }
    
        //检查一下现在还有几个page，是不是够用.done
        if frame_left() < number {
            return -1 as isize;
        }
    
        let permission = convert_usize_to_permission(port);
        match permission{
            Some(MapPermission) => {},
            None => return -1 as isize,
        }
    
        //这个地址范围是不是有人已经映射过了？
        //根据代码，调用translate检查即可
        //done：port to mappermission
        //mmap给分配的空间都是在用户态下使用的，因此可以给U权限哦
        let mut area = MapArea::new((start).into(),
                                (start+len).into(),
                                MapType::Framed,
                                permission.unwrap() | MapPermission::U);
                                
        area.print_range();
        //调用translate，检查是否全部能完成映射
        if area.not_map_check(&self.page_table)==false {
            println!("[kernel] have mapped!");
            return -1 as isize;
        }

        area.map(&mut self.page_table);
    
        let size = usize::from(area.vpn_range.get_end()) - usize::from(area.vpn_range.get_start());
    
        self.areas.push(area);
    
        //以上合法性检查结束之后，可以直接分配。分为2步：
        //1，申请物理页面（怎么申请？申请完给谁？）
        // 这里不用手动写，因为在map的代码里面已经调用了分配物理页帧的函数
    
        //问题：现在的困难在于，每一个不同的进程都会有不同的映射规则。
        //我在这里怎么访问“当前进程下的。。。。”呢，KERNELSPACE好像是一个不同进程下的东西
        debug!("[kernel] in mmap...size alloc is {},{}",number,size);
        assert_eq!(number, size);
        debug!("[kernel] in mmap...size alloc is {}",size);
    
        return (size*PAGE_SIZE) as isize;
    }

    /// 接口：fn unmmap(start: usize, len: usize) -> isize
    /// 在系统调用处已经进行了数据合法性检查，因此在这里可以直接进行分配
    /// start：开始地址
    /// number：要分配几个page
    pub fn munmap(&mut self,start: usize, len: usize) -> isize{
        //要检查的内容：
        //1. 物理内存还够用吗
        //2. 这个地址范围内是不是有哪些已经被映射过了

        if start % PAGE_SIZE != 0 {
            return -1 as isize;
        }
        if len == 0 {
            warn!("in mmap...number=0");
            return 0 as isize;
        }
        let number = ((len - 1 + PAGE_SIZE) /PAGE_SIZE )as usize;
        //向上取整,表示会用到几个page

        let start_va: VirtAddr = start.into();
        let end_va: VirtAddr = (start+len).into();
        let start_vpn: VirtPageNum = start_va.floor();
        let end_vpn: VirtPageNum = end_va.ceil();

        //这是被映射过去的maparea里面的地址范围
        let range = VPNRange::new(start_vpn, end_vpn);
        let size = usize::from(range.get_end()) - usize::from(range.get_start());
        // let mut kernel_space = KERNEL_SPACE.lock();
        return self.unmap_the_chosen_area(range);
        // return -1 as isize;
    }

}

pub struct MapArea {
    vpn_range: VPNRange,
    data_frames: BTreeMap<VirtPageNum, FrameTracker>,
    map_type: MapType,
    map_perm: MapPermission,
}
//按照规则，一次只能分配整数个page
impl MapArea {
    pub fn new(
        start_va: VirtAddr,
        end_va: VirtAddr,
        map_type: MapType,
        map_perm: MapPermission
    ) -> Self {
        let start_vpn: VirtPageNum = start_va.floor();
        let end_vpn: VirtPageNum = end_va.ceil();
        Self {
            vpn_range: VPNRange::new(start_vpn, end_vpn),
            data_frames: BTreeMap::new(),
            map_type,
            map_perm,
        }
    }
    pub fn map_one(&mut self, page_table: &mut PageTable, vpn: VirtPageNum) {
        let ppn: PhysPageNum;
        match self.map_type {
            MapType::Identical => {
                ppn = PhysPageNum(vpn.0);
            }
            MapType::Framed => {
                let frame = frame_alloc().unwrap();
                ppn = frame.ppn;
                self.data_frames.insert(vpn, frame);
            }
        }
        let pte_flags = PTEFlags::from_bits(self.map_perm.bits).unwrap();
        page_table.map(vpn, ppn, pte_flags);
    }
    #[allow(unused)]
    pub fn unmap_one(&mut self, page_table: &mut PageTable, vpn: VirtPageNum) {
        match self.map_type {
            MapType::Framed => {
                self.data_frames.remove(&vpn);
            }
            _ => {}
        }
        page_table.unmap(vpn);
    }
    pub fn map(&mut self, page_table: &mut PageTable) {
        for vpn in self.vpn_range {
            self.map_one(page_table, vpn);
        }
    }
    #[allow(unused)]
    pub fn unmap(&mut self, page_table: &mut PageTable) {
        for vpn in self.vpn_range {
            self.unmap_one(page_table, vpn);
        }
    }
    /// data: start-aligned but maybe with shorter length
    /// assume that all frames were cleared before
    pub fn copy_data(&mut self, page_table: &mut PageTable, data: &[u8]) {
        assert_eq!(self.map_type, MapType::Framed);
        let mut start: usize = 0;
        let mut current_vpn = self.vpn_range.get_start();
        let len = data.len();
        loop {
            let src = &data[start..len.min(start + PAGE_SIZE)];
            let dst = &mut page_table
                .translate(current_vpn)
                .unwrap()
                .ppn()
                .get_bytes_array()[..src.len()];
            dst.copy_from_slice(src);
            start += PAGE_SIZE;
            if start >= len {
                break;
            }
            current_vpn.step();
        }
    }
    //print range
    pub fn print_range(&self) {
        info!("[kernel] MapArea::range  ({:#x},{:#x})",
            usize::from(self.vpn_range.get_start()),
            usize::from(self.vpn_range.get_end())
        );
    }
    //check if has mapped...
    //找到问题了！这里不是应该寻找kernel space的页表
    //而是寻找当前的页表是否有映射。。。
    pub fn not_map_check(&self,page_table: &PageTable)-> bool{
        self.print_range();
        for vpn in self.vpn_range{
            if let Some(pte) = page_table.translate(vpn){
                if pte.is_valid(){
                    warn!("[kernel] vpn have mapped is {:#x}",usize::from(pte.ppn()));
                    return false
                }
            }
        }
        return true;
    }
    //check if not mapped...
    pub fn have_mapped_check(&self)-> bool{
        let kernel_space = KERNEL_SPACE.lock();
        for vpn in self.vpn_range{
            match kernel_space.page_table.translate(vpn){
                None => return false,//只要有一个虚拟地址没有被映射，那么就发生错误，报错返回
                _ => {}
            }
        }
        return true;
    }
    pub fn match_area_with_vpnrange(&self, range: VPNRange)->bool{
        if (self.vpn_range.get_start() == range.get_start()) && (self.vpn_range.get_end() == range.get_end()){
            true
        }else{
            false
        }
    }
    pub fn unmap_the_chosen_area(&mut self,page_table: &mut PageTable,range: VPNRange)->isize{
        if self.match_area_with_vpnrange(range){
            self.unmap(page_table);
            let size = usize::from(range.get_end()) - usize::from(range.get_start());
            return size as isize;
        }
        return -1 as isize;
    }
}

#[derive(Copy, Clone, PartialEq, Debug)]
pub enum MapType {
    Identical,
    Framed,
}

//done:在MapArea这里，要给Permission加上U权限啊

bitflags! {
    pub struct MapPermission: u8 {
        const R = 1 << 1;
        const W = 1 << 2;
        const X = 1 << 3;
        const U = 1 << 4;
    }
}

#[allow(unused)]
pub fn remap_test() {
    let mut kernel_space = KERNEL_SPACE.lock();
    let mid_text: VirtAddr = ((stext as usize + etext as usize) / 2).into();
    let mid_rodata: VirtAddr = ((srodata as usize + erodata as usize) / 2).into();
    let mid_data: VirtAddr = ((sdata as usize + edata as usize) / 2).into();
    assert_eq!(
        kernel_space.page_table.translate(mid_text.floor()).unwrap().writable(),
        false
    );
    assert_eq!(
        kernel_space.page_table.translate(mid_rodata.floor()).unwrap().writable(),
        false,
    );
    assert_eq!(
        kernel_space.page_table.translate(mid_data.floor()).unwrap().executable(),
        false,
    );
    // kernel_space.insert_framed_area();
    println!("remap_test passed!");
}