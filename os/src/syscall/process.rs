use crate::task::{
    suspend_current_and_run_next,
    exit_current_and_run_next,
};
use crate::timer::{get_time,get_time_ms,TimeVal};
use crate::task::set_task_priority;
use crate::config::ISIZI_MAX;

pub fn sys_exit(exit_code: i32) -> ! {
    kernel_println!("[kernel] Application exited with code {}", exit_code);
    exit_current_and_run_next();
    panic!("Unreachable in sys_exit!");
}

pub fn sys_yield() -> isize {
    suspend_current_and_run_next();
    0
}

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
pub fn sys_get_time(ts: *mut TimeVal, tz: usize) -> isize{
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
    if prio>=2 && prio<=ISIZI_MAX as usize {
        set_task_priority(prio);
        return prio as isize
    }
    return -1 as isize
}