mod context;
mod switch;
mod task;
mod stride;

use crate::loader::{get_num_app, get_app_data};
use crate::trap::TrapContext;
use core::cell::RefCell;
use lazy_static::*;
use switch::__switch;
use task::{TaskControlBlock, TaskStatus};
use alloc::vec::Vec;
// use crate::config::MAX_APP_NUM;
// use crate::config::APP_BASE_ADDRESS;
// use crate::config::APP_SIZE_LIMIT;
// use crate::loader::{get_num_app, init_app_cx, get_user_stack_space};
// use core::cell::RefCell;
// use lazy_static::*;
// use switch::__switch;
// use task::{TaskControlBlock, TaskStatus, TaskPriority};
use stride::TaskStride;

pub use context::TaskContext;

pub struct TaskManager {
    num_app: usize,
    inner: RefCell<TaskManagerInner>,
    inner_strides: RefCell<StrideInner>,
}

struct TaskManagerInner {
    tasks: Vec<TaskControlBlock>,
    current_task: usize,
}

struct StrideInner{
    strides: Vec<TaskStride>,
}

unsafe impl Sync for TaskManager {}

lazy_static! {
    pub static ref TASK_MANAGER: TaskManager = {
        println!("init TASK_MANAGER");
        let num_app = get_num_app();
        println!("num_app = {}", num_app);
        // NOTICE: add stride initialize
        let mut tasks: Vec<TaskControlBlock> = Vec::new();
        let mut strides: Vec<TaskStride> = Vec::new();
        for i in 0..num_app {
            tasks.push(TaskControlBlock::new(
                get_app_data(i),
                i,
            ));
            strides.push(TaskStride::new(i));
        }
        TaskManager {
            num_app,
            inner: RefCell::new(TaskManagerInner {
                tasks,
                current_task: 0,
            }),
            inner_strides: RefCell::new(StrideInner{
                strides,
            })
        }
    };
}

impl TaskManager {
    fn run_first_task(&self) {
        self.inner.borrow_mut().tasks[0].task_status = TaskStatus::Running;
        let next_task_cx_ptr2 = self.inner.borrow().tasks[0].get_task_cx_ptr2() as *mut usize;
        //奇怪了，明明构造函数里面，给存的就是虚拟地址啊？为什么这里print出来竟然是物理地址了
        //这是因为在OS启动的时候给物理地址建立了一一映射啊
        let _unused: usize = 0;
        unsafe { 
            //在进入之前好像还什么问题也没有。
            //怎么回事，似乎是进入__switch函数了但是又没有在断电处停下。
            __switch(
                &_unused as *const _,
                next_task_cx_ptr2,
            );
        }
    }

    fn mark_current_suspended(&self) {
        let mut inner = self.inner.borrow_mut();
        let current = inner.current_task;
        inner.tasks[current].task_status = TaskStatus::Ready;
    }

    fn mark_current_exited(&self) {
        let mut inner = self.inner.borrow_mut();
        let current = inner.current_task;
        inner.tasks[current].task_status = TaskStatus::Exited;
    }
/*
    fn find_next_task(&self) -> Option<usize> {
        let inner = self.inner.borrow();
        let current = inner.current_task;
        //就是在这里要加入调度算法！哪个进程是下一个要运行的进程呢？下面一句返回的就是它
        (current + 1..current + self.num_app + 1)
            .map(|id| id % self.num_app)
            .find(|id| {
                inner.tasks[*id].task_status == TaskStatus::Ready
            })
    }
*/
    fn get_current_token(&self) -> usize {
        let inner = self.inner.borrow();
        let current = inner.current_task;
        inner.tasks[current].get_user_token()
    }

    pub fn get_current_trap_cx(&self) -> &mut TrapContext{
        let inner = self.inner.borrow();
        let current = inner.current_task;
        inner.tasks[current].get_trap_cx()
    }

    ///!!!
    fn find_next_task_stride(&self) -> Option<usize> {
        trace!("in find next task stride...");
        let inner = self.inner.borrow();
        let current = inner.current_task;
        //修改调度算法，返回不同的值
        // 为每个进程设置一个当前 stride，表示该进程当前已经运行的“长度”。
        // 另外设置其对应的 pass 值（只与进程的优先权有关系），表示对应进程在调度后，stride 需要进行的累加值。
        // 每次需要调度时，从当前 runnable 态的进程中选择 stride 最小的进程调度。对于获得调度的进程 P，将对应的 stride 加上其对应的步长 pass。
        // 一个时间片后，回到上一步骤，重新调度当前 stride 最小的进程。
        //遍历一遍所有进程
        //查找Ready且stride最小的，对这个进程++
        //也可以是当前进程
        let mut inner_strides = self.inner_strides.borrow_mut();
        let mut min_stride :usize = inner_strides.strides[current].get_my_stride();
        let mut min_task:usize = self.num_app;
        for task_id in 0..self.num_app {
            if inner_strides.strides[task_id].get_my_stride() <= min_stride && inner.tasks[task_id].task_status == TaskStatus::Ready{
                min_stride = inner_strides.strides[task_id].get_my_stride();
                min_task = task_id;
            }
        }
        if min_task == self.num_app{
            debug!("find no task...");
            None
        }else{
            debug!("find next task...{}, stride is {}",min_task,inner_strides.strides[min_task].get_my_stride());
            inner_strides.strides[min_task].run_me();
            Some(min_task)
        }
    }

    fn run_next_task(&self) {
        trace!("run_next_task......");
        if let Some(next) = self.find_next_task_stride() {
            trace!("next task is....{}",next);
            let mut inner = self.inner.borrow_mut();
            let current = inner.current_task;
            inner.tasks[next].task_status = TaskStatus::Running;
            inner.current_task = next;
            let current_task_cx_ptr2 = inner.tasks[current].get_task_cx_ptr2();
            let next_task_cx_ptr2 = inner.tasks[next].get_task_cx_ptr2();
            core::mem::drop(inner);
            unsafe {
                __switch(
                    current_task_cx_ptr2,
                    next_task_cx_ptr2,
                );
            }
        } else {
            panic!("All applications completed!");
        }
    }

    fn get_task_current(&self) -> usize{
        let inner = self.inner.borrow_mut();
        let current = inner.current_task;
        current
    }

    fn get_num_app(&self)->usize{
        self.num_app
    }

    fn get_task_priority(&self,task:usize) -> usize{
        let inner = self.inner.borrow();
        inner.tasks[task].get_priority()
    }

    fn set_task_priority(&self, prio:usize){
        let mut inner = self.inner.borrow_mut();
        let current = inner.current_task;
        inner.tasks[current].set_priority(prio);
    }

    fn mmap(&self,start: usize, len: usize, port: usize) -> isize{
        let mut inner = self.inner.borrow_mut();
        let current = inner.current_task;
        inner.tasks[current].mmap(start, len, port)
    }
    fn munmap(&self,start: usize, len: usize) -> isize{
        let mut inner = self.inner.borrow_mut();
        let current = inner.current_task;
        inner.tasks[current].munmap(start, len)
    }
}

pub fn run_first_task() {
    TASK_MANAGER.run_first_task();
}

fn run_next_task() {
    TASK_MANAGER.run_next_task();
}

fn mark_current_suspended() {
    TASK_MANAGER.mark_current_suspended();
}

fn mark_current_exited() {
    TASK_MANAGER.mark_current_exited();
}

pub fn suspend_current_and_run_next() {
    mark_current_suspended();
    run_next_task();
}

pub fn exit_current_and_run_next() {
    mark_current_exited();
    run_next_task();
}

pub fn current_user_token() -> usize {
    TASK_MANAGER.get_current_token()
}

// pub fn current_trap_cx() -> &'static mut TrapContext {
//     TASK_MANAGER.lock().get_current_trap_cx()
// }
// pub fn current_trap_cx() -> &'static mut TrapContext {
//     let tm = TASK_MANAGER.lock();
//     tm.get_current_trap_cx()
// }

pub fn get_my_num_app()->usize{
    TASK_MANAGER.get_num_app()
}

// //for sys_write check
pub fn get_task_current()->usize{
    TASK_MANAGER.get_task_current()
}

pub fn set_task_priority(prio:usize){
    //
    TASK_MANAGER.set_task_priority(prio);
}

pub fn get_task_priority(task:usize)->usize{
    TASK_MANAGER.get_task_priority(task)
}

// pub fn get_current_memoryset()->&'static mut MemorySet{
//     TASK_MANAGER.lock().get_current_memoryset()
// }

pub fn mmap(start: usize, len: usize, port: usize) -> isize{
    TASK_MANAGER.mmap(start, len, port)
}

pub fn munmap(start: usize, len: usize) -> isize{
    TASK_MANAGER.munmap(start, len)
}

// pub fn mmap(start: usize, len: usize, port: usize) -> isize{
//     // TASK_MANAGER.mmap(start, len, port)
//     TASK_MANAGER.get_current_memoryset().mmap(start,len,port)
// }

// pub fn munmap(start: usize, len: usize) -> isize{
//     TASK_MANAGER.get_current_memoryset().munmap(start, len)
// }