use crate::mm::{
    UserBuffer,
    translated_byte_buffer,
    translated_refmut,
    translated_str,
    check_byte_buffer_valid,
};

use crate::fs::{make_pipe, OpenFlags, open_file};
use alloc::sync::Arc;

use crate::task::{
    current_user_token, 
    mail_user_token_pid,

    current_task,
    call_test,
    mail_write_to_pid,
    mail_write_to_me,
    mail_get_from_me,
    mail_not_full_me,
    mail_not_full_pid,
    mail_not_empty_me,
    
};

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
        if !file.writable() {
            return -1;
        }
        let file = file.clone();
        // release Task lock manually to avoid deadlock
        drop(inner);
        // file.write(
        //     UserBuffer::new(translated_byte_buffer(token, buf, len))
        // ) as isize
        if let Some(tsf) = translated_byte_buffer(token, buf, len){
            file.write(UserBuffer::new(tsf)) as isize
        }else{
            -1
        }
        // file.read(
        //     UserBuffer::new(translated_byte_buffer(token, buf, len))
        // ) as isize
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
        if !file.readable() {
            return -1;
        }
        // release Task lock manually to avoid deadlock
        // 问题：为什么是在这里drop的？
        drop(inner);
        if let Some(tsf) = translated_byte_buffer(token, buf, len){
            file.read(UserBuffer::new(tsf)) as isize
        }else{
            -1
        }
        // file.read(
        //     UserBuffer::new(translated_byte_buffer(token, buf, len))
        // ) as isize
    } else {
        -1
    }
}

pub fn sys_open(path: *const u8, flags: u32) -> isize {
    let task = current_task().unwrap();
    let token = current_user_token();
    let path = translated_str(token, path);
    if let Some(inode) = open_file(
        path.as_str(),
        OpenFlags::from_bits(flags).unwrap()
    ) {
        let mut inner = task.acquire_inner_lock();
        let fd = inner.alloc_fd();
        inner.fd_table[fd] = Some(inode);
        fd as isize
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

/// 功能：将进程中一个已经打开的文件复制一份并分配到一个新的文件描述符中。
/// 参数：fd 表示进程中一个已经打开的文件的文件描述符。
/// 返回值：如果出现了错误则返回 -1，否则能够访问已打开文件的新文件描述符。
/// 可能的错误原因是：传入的 fd 并不对应一个合法的已打开文件。
/// syscall ID：24
pub fn sys_dup(fd: usize) -> isize {
    let task = current_task().unwrap();
    let mut inner = task.acquire_inner_lock();
    if fd >= inner.fd_table.len() {
        return -1;
    }
    if inner.fd_table[fd].is_none() {
        return -1;
    }
    let new_fd = inner.alloc_fd();
    inner.fd_table[new_fd] = Some(Arc::clone(inner.fd_table[fd].as_ref().unwrap()));
    new_fd as isize
}

//把邮箱里面的内容写到缓冲区
pub fn sys_mail_read(buf: *mut u8, l: usize)->isize{
    // call_test(1);
    //因为这里是直接复用了pipe，所以会受到一些限制。比如说，pipe如果写超了，就会直接切换进程······
    //然后你就会发现自己好像死锁了。
    //除非自己模仿pipe重写一个真正的mail，否则就只能这样在进入函数之前
    //一定要判断有没有超范围啊
    let mut len = l;
    //这是测试是否有报文可以读
    if len==0{
        warn!("[mail_read] len=0,may fail");
        if let Some(not_empty) = mail_not_empty_me(){
            if(not_empty){
                return 0 as isize;
            }
        }
        return -1 as isize;
    }
    if len>MAIL_SIZE{
        len = MAIL_SIZE;
    }
    //如果地址非法，就不能读了
    let token = current_user_token();
    if !check_byte_buffer_valid(token, buf, len){
        warn!("[mail_read] invalid byte buffer address,may fail");
        return -1 as isize;
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
        let len = sys_read(read_fd,buf,len);
        if sys_close(read_fd)!= -1 {
            return len as isize;
        }else{
            return -1 as isize;
        }
    }else{
        warn!("[mail_read] can't get mail,may fail");
        return -1 as isize;
    }
    warn!("[mail_read] I don't know what's wrong,may fail");
    return -1 as isize;
}

//把缓冲区里面的内容写进进程pid的邮箱
pub fn sys_mail_write(pid: usize, buf: *mut u8, l: usize)->isize{
    // call_test(1);
    //因为这里是直接复用了pipe，所以会受到一些限制。比如说，pipe如果写超了，就会直接切换进程······
    //然后你就会发现自己好像死锁了。
    //除非自己模仿pipe重写一个真正的mail，否则就只能这样在进入函数之前
    //一定要判断有没有超范围啊
    
    //地址错误是需要先检查的。。。
    let mut len = l;
    let p = sys_getpid() as isize;//my pid is p
    if len==0{
        warn!("[mail_write] len=0,may fail");
        if (p == pid as isize){
            if let Some(not_full) = mail_not_full_me(){
                if(not_full){
                    return 0 as isize;
                }
            }
            return -1 as isize;
        }else{
            if let Some(not_full) = mail_not_full_pid(pid){
                if(not_full){
                    return 0 as isize;
                }
            }
            return -1 as isize;
        }
    }
    if len>MAIL_SIZE{
        warn!("[mail_write] len too long,continue");
        len = MAIL_SIZE;
    }
    
    if (p == pid as isize){
        //先检查地址错误
        //如果地址非法，就不能读了
        let token = current_user_token();
        if !check_byte_buffer_valid(token, buf, len){
            return -1 as isize;
        }
        //如果是要给自己写
        //就不能在TASK_MANAGER里面找，找不到的
        if let Some(mpipe_write) = mail_write_to_me(){
            //如果返回了文件描述符，也就是可以写的意思
            let task = current_task().unwrap();
            let mut inner = task.acquire_inner_lock();
            let write_fd = inner.alloc_fd();
            inner.fd_table[write_fd] = Some(mpipe_write);
            drop(inner);
            if sys_write(write_fd,buf,len) != -1{
                if sys_close(write_fd)!= -1 {
                    return len as isize;
                }else{
                    warn!("[mail_write] sys_close fail,fail");
                    return -1 as isize;
                }
            }else{
                warn!("[mail_write] sys_write fail,fail");
                return -1 as isize;
            }
        }else{
            warn!("[mail_write] can't get mail,fail");
            return -1 as isize;
        }
    }else{
        //先检查地址错误
        //如果地址非法，就不能读了
        if let Some(token) = mail_user_token_pid(pid){
            if !check_byte_buffer_valid(token, buf, len){
                return -1 as isize;
            }
        }else{
            return -1 as isize;
        }
        
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
            warn!("[mail_write] can't get mail,fail");
            return -1 as isize;
        }
    }
    -1 as isize
}