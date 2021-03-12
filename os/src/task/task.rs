use crate::mm::{MemorySet, PhysPageNum, KERNEL_SPACE, VirtAddr};
use crate::trap::{TrapContext, trap_handler};
use crate::config::{TRAP_CONTEXT};
use super::TaskContext;
use super::{PidHandle, pid_alloc, KernelStack};
use alloc::sync::{Weak, Arc};
use alloc::vec::Vec;
use spin::{Mutex, MutexGuard};

const TASK_PRIORITY_INIT:usize = 16;

// #[derive(Copy, Clone, PartialEq)]
pub struct TaskControlBlock {
    // immutable
    pub pid: PidHandle,
    pub kernel_stack: KernelStack,
    // mutable
    inner: Mutex<TaskControlBlockInner>,
}

pub struct TaskControlBlockInner {
    pub trap_cx_ppn: PhysPageNum,
    pub base_size: usize,
    pub task_cx_ptr: usize,
    pub task_status: TaskStatus,
    pub memory_set: MemorySet,
    pub parent: Option<Weak<TaskControlBlock>>,
    pub children: Vec<Arc<TaskControlBlock>>,
    pub exit_code: i32,
}

impl TaskControlBlockInner {
    pub fn get_task_cx_ptr2(&self) -> *const usize {
        &self.task_cx_ptr as *const usize
    }
    pub fn get_trap_cx(&self) -> &'static mut TrapContext {
        self.trap_cx_ppn.get_mut()
    }
    pub fn get_user_token(&self) -> usize {
        self.memory_set.token()
    }
    fn get_status(&self) -> TaskStatus {
        self.task_status
    }
    pub fn is_zombie(&self) -> bool {
        self.get_status() == TaskStatus::Zombie
    }
}

impl TaskControlBlock {
    pub fn acquire_inner_lock(&self) -> MutexGuard<TaskControlBlockInner> {
        self.inner.lock()
    }
    pub fn new(elf_data: &[u8]) -> Self {
        // memory_set with elf program headers/trampoline/trap context/user stack
        let (memory_set, user_sp, entry_point) = MemorySet::from_elf(elf_data);
        let trap_cx_ppn = memory_set
            .translate(VirtAddr::from(TRAP_CONTEXT).into())
            .unwrap()
            .ppn();
//===================
        // alloc a pid and a kernel stack in kernel space
        let pid_handle = pid_alloc();
        let kernel_stack = KernelStack::new(&pid_handle);
        let kernel_stack_top = kernel_stack.get_top();
        // push a task context which goes to trap_return to the top of kernel stack
        let task_cx_ptr = kernel_stack.push_on_top(TaskContext::goto_trap_return());
        let task_control_block = Self {
            pid: pid_handle,
            kernel_stack,
            inner: Mutex::new(TaskControlBlockInner {
                trap_cx_ppn,
                base_size: user_sp,
                task_cx_ptr: task_cx_ptr as usize,
                task_status: TaskStatus::Ready,
                memory_set,
                parent: None,
                children: Vec::new(),
                exit_code: 0,
            }),
        };
        // prepare TrapContext in user space
        let trap_cx = task_control_block.acquire_inner_lock().get_trap_cx();
        *trap_cx = TrapContext::app_init_context(
//=============================
        // let task_status = TaskStatus::Ready;
        // // map a kernel-stack in kernel space
        // let (kernel_stack_bottom, kernel_stack_top) = kernel_stack_position(app_id);
        // KERNEL_SPACE
        //     .lock()
        //     .insert_framed_area(
        //         kernel_stack_bottom.into(),
        //         kernel_stack_top.into(),
        //         MapPermission::R | MapPermission::W,
        //     );
        // let task_cx_ptr = (kernel_stack_top - core::mem::size_of::<TaskContext>()) as *mut TaskContext;
        // let pa_top = KERNEL_SPACE.lock().v2p(VirtAddr::from(kernel_stack_top)).unwrap();
        // let pa_bottom = KERNEL_SPACE.lock().v2p(VirtAddr::from(kernel_stack_bottom)).unwrap();
        // //很多个app的top发现物理地址是0，这是正常现象。

        // debug!("kernel_stack_bottom  is...{:#x},pa is {:#x}",kernel_stack_bottom,usize::from(pa_bottom)); 
        // debug!("kernel_stack_top     is...{:#x},pa is {:#x}",kernel_stack_top,usize::from(pa_top)); 
        // // info!("task_cx_ptr is...{:#x}",task_cx_ptr as usize); 
        // //能不能得到正确的返回地址，关键在于这里得到的task_cx_ptr是否正确
        // //得到一个地址，这个似乎也是虚拟地址，只不过OS启动的时候建立了分页机制，先给物理地址进行了一一对应的自映射
        // //所以这个0x80xxxxxx也可以当成虚拟地址来看
        // unsafe { *task_cx_ptr = TaskContext::goto_trap_return(); }
        // //这里的ra是物理地址。是因为产生trap的时候，是要进入S态进行处理的，所以返回地址确实必须是真实的物理地址（？？？）

        // //把trap之后返回地址写进去，返回地址是在别的地方得到的
        // //NOTICE
        // let task_priority = TaskPriority::new();
        // let task_control_block = Self {
        //     task_cx_ptr: task_cx_ptr as usize,
        //     task_status,
        //     memory_set,
        //     trap_cx_ppn,
        //     base_size: user_sp,
        //     //NOTICE
        //     task_priority,
        // };
        // // prepare TrapContext in user space
        // let trap_cx = task_control_block.get_trap_cx();
        // *trap_cx= TrapContext::app_init_context(
//============================
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
    pub fn exec(&self, elf_data: &[u8]) {
        // memory_set with elf program headers/trampoline/trap context/user stack
        let (memory_set, user_sp, entry_point) = MemorySet::from_elf(elf_data);
        let trap_cx_ppn = memory_set
            .translate(VirtAddr::from(TRAP_CONTEXT).into())
            .unwrap()
            .ppn();

        // **** hold current PCB lock
        let mut inner = self.acquire_inner_lock();
        // substitute memory_set
        inner.memory_set = memory_set;
        // update trap_cx ppn
        inner.trap_cx_ppn = trap_cx_ppn;
        // initialize trap_cx
        let trap_cx = inner.get_trap_cx();
        *trap_cx = TrapContext::app_init_context(
            entry_point,
            user_sp,
            KERNEL_SPACE.lock().token(),
            self.kernel_stack.get_top(),
            trap_handler as usize,
        );
        // **** release current PCB lock
    }
    pub fn fork(self: &Arc<TaskControlBlock>) -> Arc<TaskControlBlock> {
        // ---- hold parent PCB lock
        let mut parent_inner = self.acquire_inner_lock();
        // copy user space(include trap context)
        let memory_set = MemorySet::from_existed_user(
            &parent_inner.memory_set
        );
        let trap_cx_ppn = memory_set
            .translate(VirtAddr::from(TRAP_CONTEXT).into())
            .unwrap()
            .ppn();
        // alloc a pid and a kernel stack in kernel space
        let pid_handle = pid_alloc();
        let kernel_stack = KernelStack::new(&pid_handle);
        let kernel_stack_top = kernel_stack.get_top();
        // push a goto_trap_return task_cx on the top of kernel stack
        let task_cx_ptr = kernel_stack.push_on_top(TaskContext::goto_trap_return());
        let task_control_block = Arc::new(TaskControlBlock {
            pid: pid_handle,
            kernel_stack,
            inner: Mutex::new(TaskControlBlockInner {
                trap_cx_ppn,
                base_size: parent_inner.base_size,
                task_cx_ptr: task_cx_ptr as usize,
                task_status: TaskStatus::Ready,
                memory_set,
                parent: Some(Arc::downgrade(self)),
                children: Vec::new(),
                exit_code: 0,
            }),
        });
        // add child
        parent_inner.children.push(task_control_block.clone());
        // modify kernel_sp in trap_cx
        // **** acquire child PCB lock
        let trap_cx = task_control_block.acquire_inner_lock().get_trap_cx();
        // **** release child PCB lock
        trap_cx.kernel_sp = kernel_stack_top;
        // return
        task_control_block
        // ---- release parent PCB lock
    }
    pub fn getpid(&self) -> usize {
        self.pid.0
    }
//======

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
}

#[derive(Copy, Clone, PartialEq)]
pub enum TaskStatus {
    Ready,
    Running,
    Zombie,
    // Exited,
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