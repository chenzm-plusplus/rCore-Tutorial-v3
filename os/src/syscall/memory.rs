use crate::task::{
    mmap,
    munmap,
};

use crate::config::{
    PAGE_SIZE,
    MEMORY_MAP_SIZE,
};

pub fn sys_mmap(start: usize, len: usize, port: usize) -> isize{
    debug!("sys_mmap...start = {:#x}, len = {}, port = {}...",start,len,port);
    //需要做几件事：
    //1.检查数据类型是否合法：
    //- start和页对齐
    //- len不能过大不能过小
    //- port满足一些要求
    if start % PAGE_SIZE != 0 {
        return -1 as isize;
    }
    if len == 0 {
        return 0 as isize;
    }
    if len > MEMORY_MAP_SIZE {
        return -1 as isize;
    }
    if (port & !0x7 != 0)||(port & 0x7 == 0) {
        return -1 as isize;
    }
    // return -1 as isize;
    return mmap(start, len, port);
}

pub fn sys_munmap(start: usize, len: usize) -> isize{
    debug!("sys_munmap...start = {:#x}, len = {}",start,len);
    //需要做几件事：
    //1.检查数据类型是否合法：
    //- start和页对齐
    //- len不能过大不能过小
    if start % PAGE_SIZE != 0 {
        return -1 as isize;
    }
    if len == 0 {
        return 0 as isize;
    }
    if len > MEMORY_MAP_SIZE {
        return -1 as isize;
    }
    //2.分配。如果还有空间分配成功就返回size，分配失败就返回-1

    // return -1 as isize;
    return munmap(start, len);
}