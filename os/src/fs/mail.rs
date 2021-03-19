//根据测例可以知道，事实上mail要做的事情就是从缓冲区读写，然后存到进程的mail缓冲里面
//为了实现进程之间通信，还是离不开用户程序自己的控制呀

use super::File;
use alloc::sync::{Arc, Weak};
use spin::Mutex;
use crate::mm::{
    UserBuffer,
};
use crate::task::suspend_current_and_run_next;

use super::Pipe;
