use crate::mm::{MemorySet, MapPermission, PhysPageNum, KERNEL_SPACE, VirtAddr};
use crate::trap::{TrapContext, trap_handler};
use crate::config::{TRAP_CONTEXT, kernel_stack_position};
use super::TaskContext;

const TASK_PRIORITY_INIT:usize = 16;

// #[derive(Copy, Clone, PartialEq)]
pub struct TaskControlBlock {
    // pub task_cx_ptr: usize,//这个是进程内核栈指针，不是用户栈指针
    pub task_cx_ptr: usize,
    pub task_status: TaskStatus,
    pub memory_set: MemorySet,
    pub trap_cx_ppn: PhysPageNum,
    pub base_size: usize,
    pub task_priority: TaskPriority,
}

impl TaskControlBlock {
    pub fn get_task_cx_ptr2(&self) -> *const usize{
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
        // let virt_task_cx_ptr = VirtAddr::from((kernel_stack_top - core::mem::size_of::<TaskContext>()) as usize);
        let pa = KERNEL_SPACE.lock().v2p(VirtAddr::from(task_cx_ptr as usize)).unwrap();
        let pa_top = KERNEL_SPACE.lock().v2p(VirtAddr::from(kernel_stack_top)).unwrap();
        let pa_bottom = KERNEL_SPACE.lock().v2p(VirtAddr::from(kernel_stack_bottom)).unwrap();
        //很多个app的top发现物理地址是0，这是正常现象。

        info!("kernel_stack_bottom is...{:#x},pa is {:#x}",kernel_stack_bottom,usize::from(pa_bottom)); 
        info!("kernel_stack_top is...{:#x},pa is {:#x}",kernel_stack_top,usize::from(pa_top));  
        info!("virtual task_cx_ptr is...{:#x}, pa is {:#x}",task_cx_ptr as usize,usize::from(pa));
        // let task_cx_ptr = usize::from(pa) as *mut TaskContext;
        //能不能得到正确的返回地址，关键在于这里得到的task_cx_ptr是否正确
        //得到一个地址，这个是实际地址
        unsafe { *task_cx_ptr = TaskContext::goto_trap_return(); }
        info!("virtual task_cx_ptr is...{:#x}, pa is {:#x}",task_cx_ptr as usize,usize::from(pa));
        //把trap之后返回地址写进去，返回地址是在别的地方得到的
        //NOTICE
        let task_priority = TaskPriority::new();
        let task_control_block = Self {
            // task_cx_ptr: task_cx_ptr as usize,
            task_cx_ptr: task_cx_ptr as usize,//存的时候还是存虚拟地址......只不过每次调用都要使用实际地址
            task_status,
            memory_set,
            trap_cx_ppn,
            base_size: user_sp,
            //NOTICE
            task_priority,
        };
        // prepare TrapContext in user space
        let trap_cx = task_control_block.get_trap_cx();
        *trap_cx = TrapContext::app_init_context(
            entry_point,
            user_sp,
            KERNEL_SPACE.lock().token(),
            kernel_stack_top,
            trap_handler as usize,
        );
        info!("virtual task_cx_ptr is...{:#x}, pa is {:#x}",task_control_block.task_cx_ptr as usize,usize::from(pa));
        info!("virtual task_cx_ptr is...{:#x}, pa is {:#x}",task_control_block.get_task_cx_ptr2() as usize,usize::from(pa));
        task_control_block
    }

    pub fn set_priority(&mut self,prio:usize){
        self.task_priority.set_priority(prio);
    }

    pub fn get_priority(&self) -> usize{
        self.task_priority.get_priority()
    }

    pub fn get_current_memoryset(&mut self)->&mut MemorySet{
        &mut self.memory_set
    }

    pub fn mmap(&mut self,start: usize, len: usize, port: usize) -> isize{
        self.memory_set.mmap(start, len, port)
    }

    pub fn munmap(&mut self,start: usize, len: usize) -> isize{
        self.memory_set.munmap(start, len)
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