use crate::mm::{
    MemorySet, 
    MapPermission, 
    PhysPageNum, 
    KERNEL_SPACE, 
    VirtAddr,
    PhysAddr,
};
use crate::trap::{TrapContext, trap_handler};
use crate::config::{TRAP_CONTEXT, kernel_stack_position};
use super::TaskContext;

const TASK_PRIORITY_INIT:usize = 16;

// #[derive(Copy, Clone, PartialEq)]
pub struct TaskControlBlock {
    pub task_cx_ptr: usize,//task_cx_ptr指的就是保存上下文的地址啊
    // pub task_cx_ptr: VirtAddr,
    // pub virt_task_cx_ptr_usize: usize,
    pub task_status: TaskStatus,
    pub memory_set: MemorySet,
    pub trap_cx_ppn: PhysPageNum,
    pub base_size: usize,
    pub task_priority: TaskPriority,
}

impl TaskControlBlock {
    //!!!!!
    pub fn get_task_cx_ptr2(&self) -> *const usize{
        // info!("[function],task_cx_ptr is...{:#x}",self.task_cx_ptr as usize);
        // info!("[function],task_cx_ptr is...{:#x}",&self.task_cx_ptr as *const usize as usize);
        &self.task_cx_ptr as *const usize
    }
    pub fn get_trap_cx(&self) -> &'static mut TrapContext {
        self.trap_cx_ppn.get_mut()
    }
    pub fn get_user_token(&self) -> usize {
        self.memory_set.token()
    }
    pub fn new(elf_data: &[u8], app_id: usize) -> Self {
        // memory_set with elf program headers/trampoline/trap context/user stack
        let (memory_set, user_sp, entry_point) = MemorySet::from_elf(elf_data);
        let trap_cx_ppn = memory_set
            .translate(VirtAddr::from(TRAP_CONTEXT).into())
            .unwrap()
            .ppn();
        let task_status = TaskStatus::Ready;
        // map a kernel-stack in kernel space
        let (kernel_stack_bottom, kernel_stack_top) = kernel_stack_position(app_id);
        KERNEL_SPACE
            .lock()
            .insert_framed_area(
                kernel_stack_bottom.into(),
                kernel_stack_top.into(),
                MapPermission::R | MapPermission::W,
            );
        let task_cx_ptr = (kernel_stack_top - core::mem::size_of::<TaskContext>()) as *mut TaskContext;
        let pa_top = KERNEL_SPACE.lock().v2p(VirtAddr::from(kernel_stack_top)).unwrap();
        let pa_bottom = KERNEL_SPACE.lock().v2p(VirtAddr::from(kernel_stack_bottom)).unwrap();
        //很多个app的top发现物理地址是0，这是正常现象。

        debug!("kernel_stack_bottom  is...{:#x},pa is {:#x}",kernel_stack_bottom,usize::from(pa_bottom)); 
        debug!("kernel_stack_top     is...{:#x},pa is {:#x}",kernel_stack_top,usize::from(pa_top)); 
        // info!("task_cx_ptr is...{:#x}",task_cx_ptr as usize); 
        //能不能得到正确的返回地址，关键在于这里得到的task_cx_ptr是否正确
        //得到一个地址，这个似乎也是虚拟地址，只不过OS启动的时候建立了分页机制，先给物理地址进行了一一对应的自映射
        //所以这个0x80xxxxxx也可以当成虚拟地址来看
        unsafe { *task_cx_ptr = TaskContext::goto_trap_return(); }
        //这里的ra是物理地址。是因为产生trap的时候，是要进入S态进行处理的，所以返回地址确实必须是真实的物理地址（？？？）

        //把trap之后返回地址写进去，返回地址是在别的地方得到的
        //NOTICE
        let task_priority = TaskPriority::new();
        let task_control_block = Self {
            task_cx_ptr: task_cx_ptr as usize,
            task_status,
            memory_set,
            trap_cx_ppn,
            base_size: user_sp,
            //NOTICE
            task_priority,
        };
        // prepare TrapContext in user space
        let trap_cx = task_control_block.get_trap_cx();
        *trap_cx= TrapContext::app_init_context(
            entry_point,
            user_sp,
            KERNEL_SPACE.lock().token(),
            kernel_stack_top,
            trap_handler as usize,
        );
        //破案了！！！原来这个函数返回的是物理地址啊！！！！！
        //明天要搞清楚的问题是，到底什么时候返回物理地址什么时候返回虚拟地址？
        //S态trap的过程
        //感觉不管返回ptr还是ptr2都没有什么区别啊，因为执行了地址转换之后都在同一个物理地址上
        task_control_block
    }

    pub fn set_priority(&mut self,prio:usize){
        self.task_priority.set_priority(prio);
    }

    pub fn get_priority(&self) -> usize{
        self.task_priority.get_priority()
    }
    pub fn mmap(&mut self,start: usize, len: usize, port: usize) -> isize{
        self.memory_set.mmap(start, len, port)
    }

    pub fn munmap(&mut self,start: usize, len: usize) -> isize{
        self.memory_set.munmap(start, len)
    }

    pub fn v2p(&self,va:VirtAddr)->Option<PhysAddr>{
        self.memory_set.v2p(va)
    }
}

#[derive(Copy, Clone, PartialEq)]
pub enum TaskStatus {
    Ready,
    Running,
    Exited,
}

#[derive(Copy, Clone, PartialEq)]
pub struct TaskPriority{
    priority: usize,
}

impl TaskPriority{
    pub fn new() -> Self {
        TaskPriority {
            priority: TASK_PRIORITY_INIT
        }
    }
    pub fn get_priority(&self)->usize{
        self.priority
    }
    pub fn set_priority(&mut self, prio:usize){
        self.priority = prio;
    }
}