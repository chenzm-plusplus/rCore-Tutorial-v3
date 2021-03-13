use crate::mm::{MemorySet, PhysPageNum, KERNEL_SPACE, VirtAddr};
use crate::trap::{TrapContext, trap_handler};
use crate::config::{TRAP_CONTEXT};
use super::{
    TaskContext,
    TaskPriority,
    add_task,
};
use super::{PidHandle, pid_alloc, KernelStack};
use alloc::sync::{Weak, Arc};
use alloc::vec::Vec;
use spin::{Mutex, MutexGuard};

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
    pub task_priority: TaskPriority,//add
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
                task_priority: TaskPriority::new(),
                parent: None,
                children: Vec::new(),
                exit_code: 0,
            }),
        };
        // prepare TrapContext in user space
        let trap_cx = task_control_block.acquire_inner_lock().get_trap_cx();
        *trap_cx = TrapContext::app_init_context(
            entry_point,
            user_sp,
            KERNEL_SPACE.lock().token(),
            kernel_stack_top,
            trap_handler as usize,
        );
        task_control_block
    }

    //和new非常像，甚至代码也非常相似······
    //只不过就是，是用新的信息来更新自己的信息，所以语法上存在一点点的不同。
    pub fn exec(&self, elf_data: &[u8]) {
        // memory_set with elf program headers/trampoline/trap context/user stack
        // 把一个elf_data加载进现在的地方来
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
        //因为exec结束就直接调用返回了，所以就会跳转到指定的trap_cx上哦
        // **** release current PCB lock
    }

    //fork在做什么呢？
    pub fn fork(self: &Arc<TaskControlBlock>) -> Arc<TaskControlBlock> {
        // ---- hold parent PCB lock
        let mut parent_inner = self.acquire_inner_lock();
        // copy user space(include trap context)
        //但是这个实际上用不到
        let memory_set = MemorySet::from_existed_user(
            //复制一份一模一样的用户空间
            //确实······感觉这里复制这一份出来，就是为了变成一个数据结构存起来，好像什么作用也没有。
            //因为真的task被执行的时候，用到的是exec里面取出来的memory_set呀
            &parent_inner.memory_set
        );
        //取出复制出来的空间的物理页号
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
                task_priority: TaskPriority::new(),
                parent: Some(Arc::downgrade(self)),//似乎这里是弱引用？
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
    
    // pub fn spawn(&self, elf_data: &[u8]) -> isize{
    pub fn spawn(self: &Arc<TaskControlBlock>, elf_data: &[u8]) -> isize{
        // ---- hold parent PCB lock
        let mut parent_inner = self.acquire_inner_lock();
        // copy user space(include trap context)
        //但是这个实际上用不到
        let memory_set = MemorySet::from_existed_user(
            //复制一份一模一样的用户空间
            //确实······感觉这里复制这一份出来，就是为了变成一个数据结构存起来，好像什么作用也没有。
            //因为真的task被执行的时候，用到的是exec里面取出来的memory_set呀
            &parent_inner.memory_set
        );
        //取出复制出来的空间的物理页号
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
                task_priority: TaskPriority::new(),
                parent: Some(Arc::downgrade(self)),//似乎这里是弱引用？
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


        
        // //第三步是把旧的进程信息塞add_task里面
        // let mut inner = self.acquire_inner_lock();
        // let parent = self.clone();
        // //复制一份自己当成parent
        // //第一步是建立新的进程控制块，修改其中的信息
        // //只有memory_set是直接从exec里面读取的
        // //先从文件里面读取我要的信息加载进来，memory_set和trap_cx_ppn都放进来
        // let (memory_set, user_sp, entry_point) = MemorySet::from_elf(elf_data);
        // let trap_cx_ppn = memory_set
        //     .translate(VirtAddr::from(TRAP_CONTEXT).into())
        //     .unwrap()
        //     .ppn();
        // //fork
        // // alloc a pid and a kernel stack in kernel space
        // let pid_handle = pid_alloc();
        // let kernel_stack = KernelStack::new(&pid_handle);
        // let kernel_stack_top = kernel_stack.get_top();
        // // push a goto_trap_return task_cx on the top of kernel stack
        // let task_cx_ptr = kernel_stack.push_on_top(TaskContext::goto_trap_return());

        // //第四步是用新建出来的控制块的信息修改我自己，这样当前的进程就成为了要执行的进程
        // //也就是真正完成了exec的功能
        // // self.pid = pid_handle;
        // // self.kernel_stack= kernel_stack;
        // inner.trap_cx_ppn = trap_cx_ppn;
        // inner.task_cx_ptr = task_cx_ptr as usize;
        // inner.task_status = TaskStatus::Ready;
        // inner.memory_set = memory_set;
        // inner.task_priority = TaskPriority::new();
        // // pub parent: Option<Weak<TaskControlBlock>>,
        // //let parent = Arc::new(TaskControlBlock)
        // inner.parent =  Some(Arc::downgrade(&parent));//TODO这里可能会有问题！！！！不过这里是引用计数的弱指针诶
        // inner.children = Vec::new();
        // inner.exit_code = 0;
        

        // //**** acquire child PCB lock
        // let trap_cx = inner.get_trap_cx();
        // // **** release child PCB lock
        // trap_cx.kernel_sp = kernel_stack_top;

        // add_task(parent);

        return self.pid.0 as isize;
    }

//=====================================================================
// sys_calls
//=====================================================================

    pub fn getpid(&self) -> usize {
        self.pid.0
    }

    pub fn set_priority(&self,prio:TaskPriority){
        // **** hold current PCB lock
        let mut inner = self.acquire_inner_lock();
        inner.task_priority.set_priority(prio);
        // **** release current PCB lock
    }
    pub fn get_priority(&self) -> TaskPriority{
        // **** hold current PCB lock
        let inner = self.acquire_inner_lock();
        inner.task_priority.get_priority()
        // **** release current PCB lock
    }

    pub fn mmap(&self,start: usize, len: usize, port: usize) -> isize{
        // **** hold current PCB lock
        let mut inner = self.acquire_inner_lock();
        inner.memory_set.mmap(start, len, port) 
        // **** release current PCB lock
    }
    pub fn munmap(&self,start: usize, len: usize) -> isize{
        // **** hold current PCB lock
        let mut inner = self.acquire_inner_lock();
        inner.memory_set.munmap(start, len)
        // **** release current PCB lock
    }
}

#[derive(Copy, Clone, PartialEq)]
pub enum TaskStatus {
    Ready,
    Running,
    Zombie,
    // Exited,
}