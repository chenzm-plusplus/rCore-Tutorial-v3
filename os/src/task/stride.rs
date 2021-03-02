// for stride
// 代码结构还需要再优化一下
extern crate alloc;

use alloc::collections::binary_heap::BinaryHeap;
use crate::config::BIG_STRIDE;
use super::get_task_priority;


/*
注意：只有处于ready状态的进程会被放在这里面。
因此这个调度算法只需要简单进行分装。
注意！！！但是在task管理的部分，每次切换进程等进程状态改变时也要改变堆
*/

pub struct Task_Stride{
    task: usize,//这个进程的编号
    stride: usize
}
impl Task_Stride{
    pub fn new(tsk:usize)-> Self{
        Task_Stride{
            task:tsk,
            stride:0 as usize,
        }
    }
    pub fn get_task(&self)->usize{
        self.task
    }
    pub fn get_stride_pass(&self)->usize{
        BIG_STRIDE / get_task_priority(self.get_task())
    }
}

// pub struct Manager_Stride{
//     heap: BinaryHeap<Task_Stride>
// }
// impl Manager_Stride{

// }