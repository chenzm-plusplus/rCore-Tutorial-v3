use crate::mm::{
    MemorySet, 
    PhysPageNum, 
    KERNEL_SPACE, 
    VirtAddr,
    PhysAddr,
};
use crate::trap::{TrapContext, trap_handler};
use crate::config::{TRAP_CONTEXT};
use super::{
    TaskContext,
    TaskPriority,
    add_task,
};
use super::{PidHandle, pid_alloc, KernelStack};
use alloc::sync::{Weak, Arc};
use alloc::vec;
use alloc::vec::Vec;
use spin::{Mutex, MutexGuard};
use crate::fs::{
    File, 
    Stdin, 
    Stdout,
    Mail,
    MailBox,
    MPipe,
    make_mpipe,
};

// #[derive(Copy, Clone, PartialEq)]
pub struct TaskControlBlock {
    // immutable
    pub pid: PidHandle,
    pub kernel_stack: KernelStack,
    // mutable
    inner: Mutex<TaskControlBlockInner>,
}

pub struct TaskControlBlockInner {
    pub trap_cx_ppn: PhysPageNum,//指出了应用地址空间中的 Trap 上下文（详见第四章）被放在的物理页帧的物理页号。
    pub base_size: usize,//应用数据仅有可能出现在应用地址空间低于 base_size 字节的区域中。借助它我们可以清楚的知道应用有多少数据驻留在内存中。
    pub task_cx_ptr: usize,//指出一个暂停的任务的任务上下文在内核地址空间（更确切的说是在自身内核栈）中的位置，用于任务切换。
    pub task_status: TaskStatus,//维护当前进程的执行状态。
    pub memory_set: MemorySet,//
    pub task_priority: TaskPriority,//add
    pub parent: Option<Weak<TaskControlBlock>>,//指向当前进程的父进程（如果存在的话）。注意我们使用 Weak 而非 Arc 来包裹另一个任务控制块，因此这个智能指针将不会影响父进程的引用计数。
    pub children: Vec<Arc<TaskControlBlock>>,//则将当前进程的所有子进程的任务控制块以 Arc 智能指针的形式保存在一个向量中，这样才能够更方便的找到它们。
    pub exit_code: i32,
    pub fd_table: Vec<Option<Arc<dyn File + Send + Sync>>>,
    pub mailbox:MailBox,//add
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
    pub fn alloc_fd(&mut self) -> usize {
        if let Some(fd) = (0..self.fd_table.len())
            .find(|fd| self.fd_table[*fd].is_none()) {
            fd
        } else {
            self.fd_table.push(None);
            self.fd_table.len() - 1
        }
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
                fd_table: vec![
                    // 0 -> stdin
                    Some(Arc::new(Stdin)),
                    // 1 -> stdout
                    Some(Arc::new(Stdout)),
                    // 2 -> stderr
                    Some(Arc::new(Stdout)),
                ],
                mailbox: MailBox::new(),
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

        // copy fd table
        let mut new_fd_table: Vec<Option<Arc<dyn File + Send + Sync>>> = Vec::new();
        for fd in parent_inner.fd_table.iter() {
            if let Some(file) = fd {
                new_fd_table.push(Some(file.clone()));
            } else {
                new_fd_table.push(None);
            }
        }
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
                fd_table: new_fd_table,
                mailbox: MailBox::new(),//邮箱并不能和父进程共享，不然几个函数之间互相传递信息就是在胡扯了
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
    
    // 这个函数假设已经在调用前取出了elf_data，可以直接拿来用了哦~
    // 会返回一个新建的进程控制块.这个新建的进程控制块，会把
    // pub fn spawn(&self, elf_data: &[u8]) -> isize{
    pub fn spawn_from(self: &Arc<TaskControlBlock>, elf_data: &[u8]) -> Arc<TaskControlBlock>{
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

        //几乎就和new函数一样，唯一的区别在于new的时候还要建立进程之间的父子关系
        // ---- hold parent PCB lock
        let mut parent_inner = self.acquire_inner_lock();
        // copy fd table
        let mut new_fd_table: Vec<Option<Arc<dyn File + Send + Sync>>> = Vec::new();
        for fd in parent_inner.fd_table.iter() {
            if let Some(file) = fd {
                new_fd_table.push(Some(file.clone()));
            } else {
                new_fd_table.push(None);
            }
        }
        let task_control_block = Arc::new(TaskControlBlock {
            pid: pid_handle,
            kernel_stack,
            inner: Mutex::new(TaskControlBlockInner {
                trap_cx_ppn,
                base_size: user_sp,
                task_cx_ptr: task_cx_ptr as usize,
                task_status: TaskStatus::Ready,
                memory_set,
                task_priority: TaskPriority::new(),
                parent: Some(Arc::downgrade(self)),
                children: Vec::new(),
                exit_code: 0,
                fd_table: new_fd_table,
                mailbox: MailBox::new(),//邮箱并不能和父进程共享，不然几个函数之间互相传递信息就是在胡扯了
            }),
        });
        // add child
        parent_inner.children.push(task_control_block.clone());
        // modify kernel_sp in trap_cx
        // prepare TrapContext in user space

        let trap_cx = task_control_block.acquire_inner_lock().get_trap_cx();
        *trap_cx = TrapContext::app_init_context(
            entry_point,
            user_sp,
            KERNEL_SPACE.lock().token(),
            kernel_stack_top,
            trap_handler as usize,
        );
        // return
        task_control_block
        // ---- release parent PCB lock
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

    pub fn v2p(&self,va:VirtAddr)->Option<PhysAddr>{
        let inner = self.acquire_inner_lock();
        inner.memory_set.v2p(va)
    }

    // let mut inner = task.acquire_inner_lock();
    // let (pipe_read, pipe_write) = make_pipe();
    // let read_fd = inner.alloc_fd();
    // inner.fd_table[read_fd] = Some(pipe_read);
    // let write_fd = inner.alloc_fd();
    // inner.fd_table[write_fd] = Some(pipe_write);

    //mail_write,意思是不知道是谁，反正有人给我写了一条邮件，要我存起来
    //这也就表明，事实上我这个进程即使并没有在运行，也得能调用这个函数
    //但是事实上这个函数并不关心邮件是什么，这个函数只管创建新的pipe，用来存储自己
    //如果返回值是None，说明创建失败了
    //需要返回的是文件描述符,是用来写的
    pub fn mail_create_from_pipe(&self)->Option<Arc<MPipe>>{
        kernel_println!("TaskControlblock::mail_create_from_pipe...pid is {}",self.pid.0);
        // **** hold current PCB lock
        let mut inner = self.acquire_inner_lock();
        // kernel_println!("TaskControlblock::mail_create_from_pipe...pid is {}",self.pid.0);
        //！！！！！一定要先判断
        //如果邮箱满了那就不能写了
        if inner.mailbox.can_add_mail(){
            let (mpipe_read, mpipe_write) = make_mpipe();
            let read_fd = inner.alloc_fd();
            inner.fd_table[read_fd] = Some(mpipe_read);
            // 给目标进程分配read_fd就可以了
            // 写pipe的文件描述符不需要存哦
            // let write_fd = inner.alloc_fd();
            // inner.fd_table[write_fd] = Some(pipe_write);
            let mail = Mail::new(read_fd);
            inner.mailbox.add_mail(mail);
            drop(inner);
            Some(mpipe_write)
        }else{
            drop(inner);
            None
        }
        // **** release current PCB lock
    }
    pub fn call_test(&self){
        let mut inner = self.acquire_inner_lock();
        kernel_println!("TaskControlBlock::call_test");
    }
}

#[derive(Copy, Clone, PartialEq)]
pub enum TaskStatus {
    Ready,
    Running,
    Zombie,
    // Exited,
}