mod heap_allocator;
mod address;
mod frame_allocator;
mod page_table;
mod memory_set;

use crate::config::{
    PAGE_SIZE,
};
use page_table::{PageTable, PTEFlags};
use address::{VPNRange, StepByOne};
pub use address::{PhysAddr, VirtAddr, PhysPageNum, VirtPageNum};
pub use frame_allocator::{
    FrameTracker, 
    frame_alloc,
    frame_left,
    frame_allocator_test,
};
pub use page_table::{PageTableEntry, translated_byte_buffer};
pub use memory_set::{MemorySet, KERNEL_SPACE, MapPermission};
pub use memory_set::remap_test;

pub fn init() {
    heap_allocator::init_heap();
    frame_allocator::init_frame_allocator();
    KERNEL_SPACE.lock().activate();
}

/// 接口：fn mmap(start: usize, len: usize, port: usize) -> isize
/// 在系统调用处已经进行了数据合法性检查，因此在这里可以直接进行分配
/// start：开始地址
/// number：要分配几个page
/// port：读写权限
pub fn mmap(start: usize, len: usize, port: usize) -> isize{
    //要检查的内容：
    //1. 物理内存还够用吗
    //2. 这个地址范围内是不是有哪些已经被映射过了

    if start % PAGE_SIZE != 0 {
        return -1 as isize;
    }
    let n = (len as f64/PAGE_SIZE as f64);
    let number = n as usize;//TODO!!!这里需要进行向上取整的类型转换
    if number == 0 {
        error!("in mmap...number=0");
        return 0 as isize;
    }

    //以防万一，再检查一遍读写权限问题
    if (port & !0x7 != 0)||(port & 0x7 == 0) {
        return -1 as isize;
    }

    //检查一下现在还有几个page，是不是够用.done
    if frame_left() < number {
        return -1 as isize;
    }

    //这个地址范围是不是有人已经映射过了？
    //需要再读一遍代码。

    //以上合法性检查结束之后，可以直接分配。分为2步：
    //1，申请物理页面（怎么申请？申请完给谁？）
    for i in 0..number{
        frame_alloc().unwrap();//申请物理页帧
    }

    //问题：现在的困难在于，每一个不同的进程都会有不同的映射规则。
    //我在这里怎么访问“当前进程下的。。。。”呢，KERNELSPACE好像是一个不同进程下的东西

    //2，放入map里面
    //检查从addr开始的这几页里面是不是有冲突
    //需要再看代码

    return -1 as isize;
}
