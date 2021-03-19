use super::{
    TaskControlBlock,
};
use crate::fs::{
    Pipe,
};
use alloc::collections::VecDeque;
use alloc::sync::Arc;
use spin::Mutex;
use lazy_static::*;

pub struct TaskManager {
    ready_queue: VecDeque<Arc<TaskControlBlock>>,
}

/// A simple FIFO scheduler.
impl TaskManager {
    pub fn new() -> Self {
        Self { ready_queue: VecDeque::new(), }
    }
    pub fn add(&mut self, task: Arc<TaskControlBlock>) {
        self.ready_queue.push_back(task);
    }
    pub fn fetch(&mut self) -> Option<Arc<TaskControlBlock>> {
        self.ready_queue.pop_front()
    }
    //事实证明，这样写是可以的！！！
    //但是需要注意一点。如果是自己给自己写，会发现并不能在这里找到。因为正在运行的进程会被从TaskManager里面取出来
    //放在Processor里面运行
    pub fn call_test(&mut self,pid: usize){
        for item in self.ready_queue.iter_mut(){
            debug!("TaskManager::call_test...pid is {}",item.pid.0);
            if item.pid.0 == pid {
                item.call_test();
            }
        }
    }
    pub fn mail_write_to_pid(&mut self, pid:usize)-> Option<Arc<Pipe>>{
        for item in self.ready_queue.iter_mut(){
            debug!("TaskManager::mail_write_to_pid...pid is {}",item.pid.0);
            if item.pid.0 == pid {
                return item.mail_create_from_pipe();
            }
        }
        None
    }
    // pub fn mail_create_from_pipe(&self)->Option<Arc<Pipe>>{
}

lazy_static! {
    pub static ref TASK_MANAGER: Mutex<TaskManager> = Mutex::new(TaskManager::new());
}

pub fn add_task(task: Arc<TaskControlBlock>) {
    TASK_MANAGER.lock().add(task);
}

pub fn fetch_task() -> Option<Arc<TaskControlBlock>> {
    TASK_MANAGER.lock().fetch()
}

pub fn call_test(pid: usize){
    kernel_println!("call_test...pid is {}",pid);
    TASK_MANAGER.lock().call_test(pid);
}

pub fn mail_write_to_pid(pid:usize)-> Option<Arc<Pipe>>{
    debug!("mail_write_to_pid...pid is {}",pid);
    TASK_MANAGER.lock().mail_write_to_pid(pid)
}