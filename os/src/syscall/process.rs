use crate::task::{
    suspend_current_and_run_next,
    exit_current_and_run_next,
};
use crate::timer::{get_time,get_time_ms,TimeVal};
use crate::task::set_task_priority;
use crate::config::{
    ISIZI_MAX,
    PAGE_SIZE,
    MEMORY_MAP_SIZE,
};
use crate::mm::{
    frame_alloc,
};


pub fn sys_exit(exit_code: i32) -> ! {
    println!("[kernel] Application exited with code {}", exit_code);
    exit_current_and_run_next();
    panic!("Unreachable in sys_exit!");
}

pub fn sys_yield() -> isize {
    suspend_current_and_run_next();
    0
}

// pub fn sys_get_time() -> isize {
//     get_time_ms() as isize
// }

// NOTICE!注意：下面的是ch3的问题
// pub fn sys_get_time() -> isize {
//     debug!("[kernel]sys_get_time...{}",get_time_ms() as isize);
//     get_time_ms() as isize
// }

// User:
// pub fn get_time() -> isize {
//     let time = TimeVal::new();
//     match sys_get_time(&time, 0) {
//         0 => ((time.sec & 0xffff) * 1000 + time.usec / 1000) as isize,
//         _ => -1
//     }
// }
pub fn sys_get_time(ts: *mut TimeVal, _tz: usize) -> isize{
    // match (*ts){
    //     Null => {},
    //     _ => {
    //         unsafe{
    //             (*ts).sec = get_time_ms()/1000;
    //             (*ts).usec = get_time_ms()*1000;
    //         }
    //     }
    // }
    unsafe{
        (*ts).sec = get_time_ms()/1000;
        (*ts).usec = get_time_ms()*1000;
    }
    0
}

//sys_gettime, sys_set_priority
pub fn sys_set_priority(prio: usize) -> isize{
    debug!("[kernel] sys_set_priority...{}",prio);
    if prio>=2 && prio<ISIZI_MAX as usize {
        set_task_priority(prio);
        return prio as isize
    }
    return -1 as isize
}

pub fn sys_mmap(start: usize, len: usize, port: usize) -> isize{
    trace!("sys_mmap...start = {:#x}, len = {}, port = {}...",start,len,port);
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
    //2.分配。如果还有空间分配成功就返回size，分配失败就返回-1

    return -1 as isize;
}