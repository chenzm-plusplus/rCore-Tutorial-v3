//根据测例可以知道，事实上mail要做的事情就是从缓冲区读写，然后存到进程的mail缓冲里面
//为了实现进程之间通信，还是离不开用户程序自己的控制呀
use alloc::collections::VecDeque;
use super::File;
use alloc::sync::{Arc, Weak};
use spin::Mutex;
use crate::mm::{
    UserBuffer,
};
use crate::task::{
    suspend_current_and_run_next,
    //这里打算在邮局中对进程控制块实现引用计数
    //mailbox随着进程销毁也跟着销毁
    PidHandle,
};

use crate::config::MAIL_SIZE;

#[derive(Copy,Clone,PartialEq)]
pub struct Mail{
    fd_read: usize,
    // fd_write: usize,
}

impl Mail{
    pub fn new(read_end:usize)->Self{
        Self{
            fd_read: read_end,
            // fd_write: write_end,
        }
    }
    pub fn get_read_fd(&self)->usize{
        self.fd_read
    }
}

const MAIL_NUMBER_LIMIT:usize = 16;

#[derive(Copy, Clone, PartialEq)]
enum MailBoxStatus {
    FULL,
    EMPTY,
    NORMAL,
}

pub struct MailBox{
    mails: VecDeque<Mail>,
    limit: usize,
    status: MailBoxStatus,
    // pid: PidHandle,
}

impl MailBox{
    pub fn new() ->Self{
        Self{
            mails:VecDeque::new(),//初始化为空
            limit: MAIL_NUMBER_LIMIT,
            status: MailBoxStatus::EMPTY,
        }
    }
    pub fn can_add_mail(&self)->bool{
        self.status != MailBoxStatus::FULL
    }
    pub fn can_read_mail(&self)->bool{
        self.status != MailBoxStatus::EMPTY
    }
    pub fn add_mail(&mut self,mail:Mail)->usize{
        if self.status==MailBoxStatus::FULL{
            return 0;
        }
        self.mails.push_back(mail);
        if self.mails.len()>=self.limit{
            self.status=MailBoxStatus::FULL;
        }
        self.mails.len()
    }
    //VecDeque自己就会返回一个Option类型，所以这里函数的返回值使用Option类就可以类
    pub fn get_mail(&mut self)->Option<Mail>{
        let m = self.mails.pop_front();
        if self.mails.len() < self.limit{
            self.status=MailBoxStatus::NORMAL;
        }
        if self.mails.len() == 0{
            self.status=MailBoxStatus::EMPTY;
        }
        m
    }
}
//=====================================================================================

//比如说我要创建一个MPipe，其实就是新建一个MPipeBuffer，
//然后读端和写端都包装成一个MPipe，用来和进程之间交互

pub struct MPipe {
    readable: bool,
    writable: bool,
    buffer: Arc<Mutex<MPipeRingBuffer>>,
}

impl MPipe {
    pub fn read_end_with_buffer(buffer: Arc<Mutex<MPipeRingBuffer>>) -> Self {
        Self {
            readable: true,
            writable: false,
            buffer,
        }
    }
    pub fn write_end_with_buffer(buffer: Arc<Mutex<MPipeRingBuffer>>) -> Self {
        Self {
            readable: false,
            writable: true,
            buffer,
        }
    }
}

// const RING_BUFFER_SIZE: usize = 32;
// const RING_BUFFER_SIZE: usize = 256;
const RING_BUFFER_SIZE: usize = MAIL_SIZE;

#[derive(Copy, Clone, PartialEq)]
enum RingBufferStatus {
    FULL,
    EMPTY,
    NORMAL,
}

pub struct MPipeRingBuffer {
    arr: [u8; RING_BUFFER_SIZE],
    head: usize,
    tail: usize,
    status: RingBufferStatus,
    write_end: Option<Weak<MPipe>>,
    //一个MPipebuffer要知道谁在写它
}

impl MPipeRingBuffer {
    pub fn new() -> Self {
        Self {
            arr: [0; RING_BUFFER_SIZE],
            head: 0,
            tail: 0,
            status: RingBufferStatus::EMPTY,
            write_end: None,
        }
    }
    pub fn set_write_end(&mut self, write_end: &Arc<MPipe>) {
        self.write_end = Some(Arc::downgrade(write_end));
    }
    pub fn write_byte(&mut self, byte: u8) {
        self.status = RingBufferStatus::NORMAL;
        self.arr[self.tail] = byte;
        self.tail = (self.tail + 1) % RING_BUFFER_SIZE;
        if self.tail == self.head {
            self.status = RingBufferStatus::FULL;
        }
    }
    pub fn read_byte(&mut self) -> u8 {
        self.status = RingBufferStatus::NORMAL;
        let c = self.arr[self.head];
        self.head = (self.head + 1) % RING_BUFFER_SIZE;
        if self.head == self.tail {
            self.status = RingBufferStatus::EMPTY;
        }
        c
    }
    pub fn available_read(&self) -> usize {
        if self.status == RingBufferStatus::EMPTY {
            0
        } else {
            if self.tail > self.head {
                self.tail - self.head
            } else {
                self.tail + RING_BUFFER_SIZE - self.head
            }
        }
    }
    pub fn available_write(&self) -> usize {
        if self.status == RingBufferStatus::FULL {
            0
        } else {
            RING_BUFFER_SIZE - self.available_read()
        }
    }
    pub fn all_write_ends_closed(&self) -> bool {
        self.write_end.as_ref().unwrap().upgrade().is_none()
    }
}

/// Return (read_end, write_end)
pub fn make_mpipe() -> (Arc<MPipe>, Arc<MPipe>) {
    let buffer = Arc::new(Mutex::new(MPipeRingBuffer::new()));
    let read_end = Arc::new(
        MPipe::read_end_with_buffer(buffer.clone())
    );
    let write_end = Arc::new(
        MPipe::write_end_with_buffer(buffer.clone())
    );
    buffer.lock().set_write_end(&write_end);
    (read_end, write_end)
}

impl File for MPipe {
    fn read(&self, buf: UserBuffer) -> usize {
        assert_eq!(self.readable, true);
        let mut buf_iter = buf.into_iter();
        let mut read_size = 0usize;
        loop {
            let mut ring_buffer = self.buffer.lock();
            let loop_read = ring_buffer.available_read();
            debug!("MPipe::avalable_read is {}",loop_read);
            if loop_read == 0 {
                if ring_buffer.all_write_ends_closed() {
                    return read_size;
                }
                warn!("MPipe::still have bytes...");
                // suspend_current_and_run_next();
                // break;
                return loop_read;
            }
            // read at most loop_read bytes
            for _ in 0..loop_read {
                if let Some(byte_ref) = buf_iter.next() {
                    unsafe { *byte_ref = ring_buffer.read_byte(); }
                    read_size += 1;
                } else {
                    return read_size;
                }
            }
        }
    }
    fn write(&self, buf: UserBuffer) -> usize {
        assert_eq!(self.writable, true);
        let mut buf_iter = buf.into_iter();
        let mut write_size = 0usize;
        loop {
            let mut ring_buffer = self.buffer.lock();
            let loop_write = ring_buffer.available_write();
            if loop_write == 0 {
                drop(ring_buffer);
                // warn!("MPipe::no space...");
                // suspend_current_and_run_next();
                // break;
                return loop_write;
            }
            // write at most loop_write bytes
            for _ in 0..loop_write {
                if let Some(byte_ref) = buf_iter.next() {
                    ring_buffer.write_byte(unsafe { *byte_ref });
                    write_size += 1;
                } else {
                    return write_size;
                }
            }
        }
    }
}