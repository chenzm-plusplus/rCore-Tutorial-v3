
use crate::config::TASK_PRIORITY_INIT;

#[derive(Copy, Clone, Ord, PartialOrd, Eq, PartialEq)]
pub struct TaskPriority(pub usize);

impl From<usize> for TaskPriority{
    fn from(v: usize) -> Self { Self(v) }
}
impl From<TaskPriority> for usize {
    fn from(v: TaskPriority) -> Self { v.0 }
}

impl TaskPriority{
    pub fn new() -> Self {
        TaskPriority(TASK_PRIORITY_INIT)
    }
    pub fn get_priority(&self)->usize{
        self.0
    }
    pub fn set_priority(&mut self, prio:usize){
        self.0 = prio;
    }
}