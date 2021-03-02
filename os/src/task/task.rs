const TASK_PRIORITY_INIT:usize = 16;

#[derive(Copy, Clone, PartialEq)]
pub struct TaskControlBlock {
    pub task_cx_ptr: usize,//这个是进程内核栈指针，不是用户栈指针
    pub task_status: TaskStatus,
    pub task_priority: TaskPriority,
}

impl TaskControlBlock {
    pub fn get_task_cx_ptr2(&self) -> *const usize {
        &self.task_cx_ptr as *const usize
    }

    pub fn set_priority(&mut self,prio:usize){
        self.task_priority.set_priority(prio);
    }

    pub fn get_priority(&self) -> usize{
        self.task_priority.get_priority()
    }
}

#[derive(Copy, Clone, PartialEq)]
pub enum TaskStatus {
    UnInit,
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
    // pub fn priority_up(&mut self)->usize{
    //     self.priority = self.priority + 1;
    //     self.priority
    // }
    // pub fn priority_down(&mut self)->usize{
    //     if self.priority>2 {
    //         self.priority = self.priority - 1;
    //     }
    //     self.priority
    // }
}