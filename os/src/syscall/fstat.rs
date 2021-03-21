#[repr(C)]
#[derive(Debug)]
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

/// StatMode 定义：
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

use alloc::sync::Arc;
use spin::Mutex;
use lazy_static::*;
use alloc::string::String;
use alloc::collections::btree_map::BTreeMap;

// lazy_static! {
//     pub static ref PATH_MAPPER: Mutex<BTreeMap> = Mutex::new(BTreeMap::new());
// }

// pub fn put_link(fake_path:String, real_path:String){
//     PATH_MAPPER.lock().insert(fake_path,real_path);
// }

// pub fn get_link(fake_path:String) -> Option<String>{
//     PATH_MAPPER.lock().get(fake_path)
// }

// pub fn remove_link(fake_path:String) ->Option<String>{
//     PATH_MAPPER.lock().remove(fake_path)
// }
lazy_static! {
    // Mutex<TaskManager> = Mutex::new(TaskManager::new());
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