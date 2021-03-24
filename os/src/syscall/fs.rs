use crate::mm::{
    UserBuffer,
    translated_byte_buffer,
    translated_refmut,
    translated_str,
    check_byte_buffer_valid,
};

use crate::mm::{
    VirtAddr,
};

use crate::fs::{
    make_pipe, OpenFlags, open_file,
    get_file_data,
};
use alloc::sync::Arc;

use crate::task::{
    current_user_token, 
    mail_user_token_pid,

    current_task,
    mail_write_to_pid,
    mail_write_to_me,
    mail_get_from_me,
    mail_not_full_me,
    mail_not_full_pid,
    mail_not_empty_me,
    
};

use crate::task::{
    current_user_v2p,
};

use super::process::sys_getpid;
use crate::config::{
    MAIL_SIZE,
};

use super::fstat::{
    Stat,
    StatMode,
    put_link,
    get_link,
    remove_link,
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
    } else {
        -1
    }
}

pub fn sys_read(fd: usize, buf: *const u8, len: usize) -> isize {
    debug!("[sys_read]...");
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
    } else {
        -1
    }
}

pub fn sys_open(path: *const u8, flags: u32) -> isize {
    info!("[sys_open]...");
    let task = current_task().unwrap();
    let token = current_user_token();
    let path = translated_str(token, path);
    if let Some(inode) = open_file(
        path.as_str(),
        OpenFlags::from_bits(flags).unwrap()
    ) {
        //inode类型是OSInode，就是一个文件（神奇！）
        let mut inner = task.acquire_inner_lock();
        let fd = inner.alloc_fd();
        inner.fd_table[fd] = Some(inode);
        return fd as isize;
    } else {
        //否则就寻找link的路径,如果能找到且可以打开
        if let Some(real_path) = get_link(&path){
            if let Some(inode) = open_file(
                real_path.as_str(),
                OpenFlags::from_bits(flags).unwrap()
            ) {
                //inode类型是OSInode，就是一个文件（神奇！）
                let mut inner = task.acquire_inner_lock();
                let fd = inner.alloc_fd();
                inner.fd_table[fd] = Some(inode);
                return fd as isize;
            }
        }
        return -1 as isize;
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
        }else{

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
}

//把缓冲区里面的内容写进进程pid的邮箱
pub fn sys_mail_write(pid: usize, buf: *mut u8, l: usize)->isize{
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
                }else{

                }
            }
            return -1 as isize;
        }else{
            if let Some(not_full) = mail_not_full_pid(pid){
                if(not_full){
                    return 0 as isize;
                }else{

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
}

//lab7
pub fn sys_linkat5(olddirfd: isize, oldpath: *const u8, newdirfd: isize, newpath: *const u8, flags: u32) -> isize{
    info!("sys_linkat5...");
    sys_linkat(oldpath, newpath, flags)
}
//我大概有思路了，大概就是磁盘上分配一个文件专门用来存储映射信息，存储一个dict，如果产生了这样的系统调用
//就在dic里面添加值，存储把某个路径映射到哪里的信息
//unlink就是把地址映射信息删除
//看样子只要存储字符串就可以了
//照理来说是要写在磁盘上的，但是现在可以暂时先写在内存里面
//我知道了！只要照抄用户态，就可以知道如何open如何使用。我在这里确实需要一个文件来存储这些映射关系，
//所以OS或许还需要对用户程序做出一些要求，比如说不允许使用以.开头的文件名，这些文件名限定为系统文件
//but now, we can ignore the security and use any name we'd like to


//事实上，系统调用接口是syscall有5个参数。但是我实在不知道怎么这样实现，所以为了先写完实验
//可以先按syscall走，userlib里面的接口也改改就可以了
//但是最后实现实验的时候大概还要再改改
pub fn sys_linkat(oldpath: *const u8, newpath: *const u8, flags: u32) -> isize{
    let token = current_user_token();
    let real_path = translated_str(token, oldpath);
    let fake_path = translated_str(token, newpath);
    info!("[sys_linkat]...real_path:{},fake_path:{}",real_path,fake_path);
    //检查旧文件是否存在
    //如果不存在那就报错返回
    if let Some(inode) = open_file(
        real_path.as_str(),
        OpenFlags::from_bits(flags).unwrap()
    ){
        debug!("[sys_linkat]....find old fild");
        let task = current_task().unwrap();
        let mut inner = task.acquire_inner_lock();
        let fd = inner.alloc_fd();
        inner.fd_table[fd] = Some(inode);
        //记得关闭文件······
        drop(inner);
        sys_close(fd);
        debug!("[sys_linkat]....old exist");
    }else{
        warn!("[sys_linkat]....old file don't exist");
        return -1 as isize;
    }
    if real_path == fake_path{
        //don't need to check
        //must success
        debug!("[sys_linkat]....old file and new file is the same");
        put_link(fake_path,real_path);
        return 0 as isize;
    }
    //检查新文件名是否已经存在
    if let Some(inode) = open_file(
        fake_path.as_str(),
        OpenFlags::from_bits(flags).unwrap()
    ){
        let task = current_task().unwrap();
        let mut inner = task.acquire_inner_lock();
        let fd = inner.alloc_fd();
        inner.fd_table[fd] = Some(inode);
        //记得关闭文件······
        sys_close(fd);
        warn!("sys_linkat....try to link a new file");
        return -1 as isize;
    }else{
        put_link(fake_path,real_path);
        debug!("[sys_linkat]....link success");
        return 0 as isize;
    }
}

pub fn sys_unlinkat(dirfd: isize, path: *const u8, flags: u32) -> isize{
    let token = current_user_token();
    let fake_path = translated_str(token, path);
    info!("[sys_unlinkat]...");
    if let Some(real_path) = remove_link(&fake_path){
        return 0 as isize;
    }else{
        //失败的原因是本来就没有这样的链接
        warn!("sys_unlinkat...trying to remove invalid linker");
        return -1 as isize;
    }
}

pub fn sys_fstat(fd: isize, st: *mut Stat) -> isize{
    info!("[sys_fstat]...fd:{:#x},st:{:#x}",fd,st as usize);



    //get-data
    let mut inner = task.acquire_inner_lock();
    if inner.fd_table[fd].is_none(){
        return -1 as isize;
    }
    let Some(inode) = inner.fd_table[fd];

    let Some(inode_id,name) = inode.get_my_data();

    info!("[sys_fstat] inode_id is {}, name is {}",inode_id,name);


    // let pa_top = KERNEL_SPACE.lock().v2p(VirtAddr::from(kernel_stack_top)).unwrap();
    //仿佛明白了······因为现在处理系统调用肯定是运行在内核态
    //但是这里给的是用户态的虚拟地址。那这就确实是有问题的
    //因此这里大概是真的需要取出物理地址，然后访问物理地址。
    //因为OS在页表初始化的时候以及建立了物理地址到物理地址的映射，因此直接访问物理地址也是没问题的吧大概
    let pa = current_user_v2p(VirtAddr::from(st as usize));
    match pa {
    //pub dev: u64,
    // /// inode 文件所在 inode 编号
    // pub ino: u64,
    // /// 文件类型
    // pub mode: StatMode,
    // /// 硬链接数量，初始为1
    // pub nlink: u32,
        Some(pa_t)=>{
            // let pa_ts = usize::from(pa.unwrap()) as *mut TimeVal;
            let pa_st = usize::from(pa_t) as *mut Stat;
            info!("[sys_fstat]...physics addr is {:#x}",pa_st as usize);
            unsafe{
                match (*pa_st){
                    Stat => {
                        (*pa_st).dev = 1 as u64;
                        (*pa_st).ino = inode_id as u64;
                        (*pa_st).mode = StatMode::FILE;
                        (*pa_st).nlink = 1 as u32;
                    }
                    _ => {
                        warn!("[sys_fstat] NULL");
                    },
                }
            }
        },
        _ =>{
            warn!("[get_time]  NONE");
        }
    }
    debug!("sys_get_time return...");
    return 0 as isize;
    info!("[sys_fstat]...");
    //todo:从文件描述符到Inode或者name
    //todo：getfiledata如何得到文件类型是文件夹还是普通文件？
    -1
}