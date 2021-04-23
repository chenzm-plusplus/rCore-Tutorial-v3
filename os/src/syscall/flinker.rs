
#[repr(C)]
#[derive(Debug,Clone,Copy)]
pub struct Stat {
    /// 文件所在磁盘驱动器号
    pub dev: u64,
    /// inode 文件所在 inode 编号
    pub ino: u64,
    /// 文件类型
    pub mode: StatMode,
    /// 硬链接数量，初始为1
    pub nlink: u32,
    /// 无需考虑，为了兼容性设计
    pad: [u64; 7],
}

bitflags! {
    pub struct StatMode: u32 {
        const NULL  = 0;
        /// directory
        const DIR   = 0o040000;
        /// ordinary regular file
        const FILE  = 0o100000;
    }
}

//下面的内容就是建立一个key-word的字典
//1.字典里面存储的是映射关系，字符串到字符串，string到string的
//2.这个映射关系存储在磁盘上某个文件中，启动OS的时候把这个文件加载出来
//3.OS关闭的时候写回去即可

use core::any::Any;
use alloc::sync::Arc;
use spin::Mutex;
use lazy_static::*;
use alloc::string::String;
use alloc::collections::btree_map::BTreeMap;
use super::fs::*;
use crate::fs::{
    make_pipe, OpenFlags, open_file, OSInode,
    create_linker,delete_linker,count_files,
    get_inode_id,
    File, 
    Stdin, 
    Stdout,
    count_files_from_id,
};
use crate::mm::{
    translated_str,
    VirtAddr,
};
use crate::task::{
    current_user_token, 
    current_task,
    current_user_v2p,
};
use super::process::sys_getpid;

lazy_static! {
    pub static ref PATH_MAPPER: Mutex<BTreeMap<String,String>> = Mutex::new(BTreeMap::new());
}

pub fn put_link(fake_path:String, real_path:String){
    PATH_MAPPER.lock().insert(fake_path,real_path);
}

pub fn get_link(fake_path:&String) -> Option<String>{
    if let Some(str) = PATH_MAPPER.lock().get(fake_path){
        Some(String::from(str))//这里必须这么写，
        //因为get方法返回的是临时变量，事实上并不能直接返回给外面的函数
    }else{
        None
    }
}

pub fn remove_link(fake_path:&String) ->Option<String>{
    PATH_MAPPER.lock().remove(fake_path)
}


//=============================

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
    if let Some(inode) = create_linker(fake_path.as_str(),real_path.as_str()){
        return -1 as isize;
    }else{
        return 0 as isize;
    }
}

pub fn sys_unlinkat(dirfd: isize, path: *const u8, flags: u32) -> isize{
    let token = current_user_token();
    let fake_path = translated_str(token, path);
    info!("[sys_unlinkat]...");
    if delete_linker(fake_path.as_str()){
        return 0 as isize;
    }else{
        return -1 as isize;
    }
}

pub fn return_if_file(f: &(dyn Any + Send + Sync)) -> Option<&Arc<OSInode>>{
    if let Some(file) = f.downcast_ref::<Arc<OSInode>>() {
        println!("It's a Arc<OSInode>");
        return Some(file)
    } else {
        warn!("Not a OSInode...");
        return None;
    }
}

pub fn sys_fstat(fd: usize, st: *mut Stat) -> isize{
    info!("[sys_fstat]...fd:{:#x},st:{:#x}",fd,st as usize);

    let task = current_task().unwrap();
    //get-data
    let mut inner = task.acquire_inner_lock();

    //TODO这儿肯定会写出死锁！！！！
    //也不一定。。。
    if let Some(inode) = &inner.fd_table[fd]{
        //判断这里是不是OSInode类型
        let inode = inode.clone();
        drop(inner);
        if let Some(inode_id) = inode.inode_id(){
            info!("[sys_fstat] inode_id is {}",inode_id);
            //TODO:exception solve
            
            let count = count_files_from_id(inode_id).unwrap();

            //这边drop掉。但是关键是···类型转换的时候会再加一次锁，这样就死锁了······Orz

            //仿佛明白了······因为现在处理系统调用肯定是运行在内核态
            //但是这里给的是用户态的虚拟地址。那这就确实是有问题的
            //因此这里大概是真的需要取出物理地址，然后访问物理地址。
            //因为OS在页表初始化的时候以及建立了物理地址到物理地址的映射，因此直接访问物理地址也是没问题的吧大概
            let pa = current_user_v2p(VirtAddr::from(st as usize));

            //println!("v2p convert end");

            // info!("[sys_fstat]...physics addr is {:#x}",pa_st as usize);
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
                                (*pa_st).nlink = count as u32;
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
        }else{
            warn!("[sys_fstat] cant't find inode id...");
            return -1 as isize;
        }
    }else{
        warn!("[sys_fstat] no file in fdtable[fd]...");
        return -1 as isize;
    }
    //这里是避免发生所有权转移
}