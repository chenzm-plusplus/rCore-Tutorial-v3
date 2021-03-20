use super::TaskControlBlock;
use alloc::sync::Arc;
use core::cell::RefCell;
use lazy_static::*;
use super::{
    fetch_task, 
    TaskStatus,
    TaskPriority,
    // set_priority,
};
use crate::mm::{
    VirtAddr,
    PhysAddr,
};
use crate::fs::{
    MPipe,
};
use super::__switch;
use crate::trap::TrapContext;

pub struct Processor {
    inner: RefCell<ProcessorInner>,
}

unsafe impl Sync for Processor {}

struct ProcessorInner {
    current: Option<Arc<TaskControlBlock>>,
    idle_task_cx_ptr: usize,
}

impl Processor {
    pub fn new() -> Self {
        Self {
            inner: RefCell::new(ProcessorInner {
                current: None,
                idle_task_cx_ptr: 0,
            }),
        }
    }
    fn get_idle_task_cx_ptr2(&self) -> *const usize {
        let inner = self.inner.borrow();
        &inner.idle_task_cx_ptr as *const usize
    }
    pub fn run(&self) {
        loop {
            if let Some(task) = fetch_task() {
                let idle_task_cx_ptr2 = self.get_idle_task_cx_ptr2();
                // acquire
                let mut task_inner = task.acquire_inner_lock();
                let next_task_cx_ptr2 = task_inner.get_task_cx_ptr2();
                task_inner.task_status = TaskStatus::Running;
                drop(task_inner);
                // release
                // 先把各种变量变了，然后current修改，然后进入switch函数里面
                self.inner.borrow_mut().current = Some(task);//可以认为是转移了所有权
                unsafe {
                    __switch(
                        idle_task_cx_ptr2,
                        next_task_cx_ptr2,
                    );
                }
            }
        }
    }
    //问题：为什么需要把当前任务“取出来”？
    pub fn take_current(&self) -> Option<Arc<TaskControlBlock>> {
        self.inner.borrow_mut().current.take()
    }
    //这个函数会把task复制一份，所以并不像上面那个函数一样直接所有权都变了
    pub fn current(&self) -> Option<Arc<TaskControlBlock>> {
        self.inner.borrow().current.as_ref().map(|task| Arc::clone(task))
    }
}

lazy_static! {
    pub static ref PROCESSOR: Processor = Processor::new();
}

pub fn run_tasks() {
    PROCESSOR.run();
}

pub fn take_current_task() -> Option<Arc<TaskControlBlock>> {
    PROCESSOR.take_current()
}

pub fn current_task() -> Option<Arc<TaskControlBlock>> {
    PROCESSOR.current()
}

pub fn current_user_token() -> usize {
    let task = current_task().unwrap();
    let token = task.acquire_inner_lock().get_user_token();
    token
}

pub fn current_trap_cx() -> &'static mut TrapContext {
    current_task().unwrap().acquire_inner_lock().get_trap_cx()
}


//=====================================================================
// 以下部分的代码是为了实现系统调用。目前支持的和进程相关的系统调用，有：
// SYSCALL_SET_PRIORITY => sys_set_priority(args[0]),
// SYSCALL_MMAP => sys_mmap(args[0],args[1],args[2]),
// SYSCALL_MUNMAP => sys_munmap(args[0],args[1]),
//=====================================================================
pub fn set_priority(prio:TaskPriority){
    let task = current_task().unwrap();
    task.set_priority(prio);
}

pub fn mmap(start: usize, len: usize, port: usize) -> isize{
    let task = current_task().unwrap();
    task.mmap(start, len, port)
}//函数结束自动释放锁

pub fn munmap(start: usize, len: usize) -> isize{
    let task = current_task().unwrap();
    task.munmap(start,len)
}

pub fn current_user_v2p(va:VirtAddr)->Option<PhysAddr>{
    let task = current_task().unwrap();
    task.v2p(va)
}

pub fn mail_write_to_me()-> Option<Arc<MPipe>>{
    let task = current_task().unwrap();
    debug!("PROCESSOR::mail_write_to_me...");
    task.mail_create_from_pipe()
}

//注意！这里返回的是文件描述符
pub fn mail_get_from_me()->Option<usize>{
    let task = current_task().unwrap();
    debug!("PROCESSOR::mail_get_from_me...");
    task.mail_get()
}

pub fn mail_not_full_me()->Option<bool>{
    let task = current_task().unwrap();
    task.mail_not_full()
}

pub fn mail_not_empty_me()->Option<bool>{
    let task = current_task().unwrap();
    task.mail_not_empty()
}


pub fn schedule(switched_task_cx_ptr2: *const usize) {
    let idle_task_cx_ptr2 = PROCESSOR.get_idle_task_cx_ptr2();
    unsafe {
        __switch(
            switched_task_cx_ptr2,
            idle_task_cx_ptr2,
        );
    }
}
