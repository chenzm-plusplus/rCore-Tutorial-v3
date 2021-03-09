use crate::trap::trap_return;

#[repr(C)]
pub struct TaskContext {
    ra: usize,
    s: [usize; 12],
}

impl TaskContext {
    pub fn goto_trap_return() -> Self {//这里是trap return的上下文，把返回地址写进了ra寄存器里面
        Self {
            ra: trap_return as usize,
            s: [0; 12],
        }
    }
}

