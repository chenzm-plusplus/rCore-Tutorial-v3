use crate::mm::{
    UserBuffer, 
    translated_byte_buffer, 
    translated_refmut
};
use crate::task::{
    current_user_token, 
    current_task,
    call_test,
    mail_write_to_pid,
    mail_write_to_me,
    mail_get_from_me,
};
use crate::fs::{make_pipe};
use crate::sbi::console_getchar;//for sys_read
use super::process::sys_getpid;
use crate::config::{
    MAIL_SIZE,
};

/// 代码段 .text 不允许被修改；
/// 只读数据段 .rodata 不允许被修改，也不允许从它上面取指；
/// .data/.bss 均允许被读写，但是不允许从它上面取指。
/// 
/// 功能：将内存中缓冲区中的数据写入文件。
/// 参数：`fd` 表示待写入文件的文件描述符；
///      `buf` 表示内存中缓冲区的起始地址；
///      `len` 表示内存中缓冲区的长度。
/// 返回值：返回成功写入的长度。
/// syscall ID：64
pub fn sys_write(fd: usize, buf: *const u8, len: usize) -> isize {
    debug!("sys_write...fd {}, buf {:#x}, len {}",fd,buf as usize,len);
    let token = current_user_token();
    let task = current_task().unwrap();
    let inner = task.acquire_inner_lock();
    if fd >= inner.fd_table.len() {
        return -1;
    }
    if let Some(file) = &inner.fd_table[fd] {
        let file = file.clone();
        // release Task lock manually to avoid deadlock
        drop(inner);
        file.write(
            UserBuffer::new(translated_byte_buffer(token, buf, len))
        ) as isize
    } else {
        -1
    }
}

pub fn sys_read(fd: usize, buf: *const u8, len: usize) -> isize {
    let token = current_user_token();
    let task = current_task().unwrap();
    let inner = task.acquire_inner_lock();
    if fd >= inner.fd_table.len() {
        return -1;
    }
    if let Some(file) = &inner.fd_table[fd] {
        let file = file.clone();
        // release Task lock manually to avoid deadlock
        // 问题：为什么是在这里drop的？
        drop(inner);
        file.read(
            UserBuffer::new(translated_byte_buffer(token, buf, len))
        ) as isize
    } else {
        -1
    }
}

pub fn sys_close(fd: usize) -> isize {
    let task = current_task().unwrap();
    let mut inner = task.acquire_inner_lock();
    if fd >= inner.fd_table.len() {
        return -1;
    }
    if inner.fd_table[fd].is_none() {
        return -1;
    }
    inner.fd_table[fd].take();
    0
}

pub fn sys_pipe(pipe: *mut usize) -> isize {
    let task = current_task().unwrap();
    let token = current_user_token();
    let mut inner = task.acquire_inner_lock();
    let (pipe_read, pipe_write) = make_pipe();
    let read_fd = inner.alloc_fd();
    inner.fd_table[read_fd] = Some(pipe_read);
    let write_fd = inner.alloc_fd();
    inner.fd_table[write_fd] = Some(pipe_write);
    *translated_refmut(token, pipe) = read_fd;
    *translated_refmut(token, unsafe { pipe.add(1) }) = write_fd;
    //总而言之以上两句话的含义是，把read_fd和write_fd都写给用户态啦
    0
}

//把邮箱里面的内容写到缓冲区
pub fn sys_mail_read(buf: *mut u8, l: usize)->isize{
    // call_test(1);
    //因为这里是直接复用了pipe，所以会受到一些限制。比如说，pipe如果写超了，就会直接切换进程······
    //然后你就会发现自己好像死锁了。
    //除非自己模仿pipe重写一个真正的mail，否则就只能这样在进入函数之前
    //一定要判断有没有超范围啊
    let mut len = l;
    if len==0{
        return -1 as isize;
    }
    if len>MAIL_SIZE{
        len = MAIL_SIZE;
    }
    //如果是要给自己写
    //就不能在TASK_MANAGER里面找，找不到的
    //这个不需要返回
    if let Some(read_fd) = mail_get_from_me(){
        //如果返回了文件描述符，也就是可以写的意思
        // let task = current_task().unwrap();
        // let mut inner = task.acquire_inner_lock();
        // inner.fd_table[read_fd] = Some(mpipe_read);
        // drop(inner);
        sys_read(read_fd,buf,len);
        sys_close(read_fd);
        return len as isize;
    }else{
        return -1 as isize;
    }
    return -1 as isize;
}

//把缓冲区里面的内容写进进程pid的邮箱
pub fn sys_mail_write(pid: usize, buf: *mut u8, l: usize)->isize{
    // call_test(1);
    //因为这里是直接复用了pipe，所以会受到一些限制。比如说，pipe如果写超了，就会直接切换进程······
    //然后你就会发现自己好像死锁了。
    //除非自己模仿pipe重写一个真正的mail，否则就只能这样在进入函数之前
    //一定要判断有没有超范围啊
    let mut len = l;
    if len==0{
        return -1 as isize;
    }
    if len>MAIL_SIZE{
        len = MAIL_SIZE;
    }
    let p = sys_getpid() as isize;//my pid is p
    if (p == pid as isize){
        //如果是要给自己写
        //就不能在TASK_MANAGER里面找，找不到的
        if let Some(mpipe_write) = mail_write_to_me(){
            //如果返回了文件描述符，也就是可以写的意思
            let task = current_task().unwrap();
            let mut inner = task.acquire_inner_lock();
            let write_fd = inner.alloc_fd();
            inner.fd_table[write_fd] = Some(mpipe_write);
            drop(inner);
            sys_write(write_fd,buf,len);
            sys_close(write_fd);
            return len as isize;
        }else{
            return -1 as isize;
        }
    }else{
        //否则就在没有正在运行的task里面找是否可以新建一封mail
        if let Some(mpipe_write) = mail_write_to_pid(pid){
            //如果返回了文件描述符，也就是可以写的意思
            let task = current_task().unwrap();
            let mut inner = task.acquire_inner_lock();
            let write_fd = inner.alloc_fd();
            inner.fd_table[write_fd] = Some(mpipe_write);
            drop(inner);
            sys_write(write_fd,buf,len);
            sys_close(write_fd);
            return len as isize;
        }else{
            return -1 as isize;
        }
    }
    -1 as isize
}