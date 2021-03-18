use crate::task::{
    suspend_current_and_run_next,
    exit_current_and_run_next,
};
use crate::timer::{
    // get_time,
    get_time_ms,
    TimeVal
};
use crate::task::{
    set_task_priority,
    mmap,
    munmap,
    get_user_token,
    current_user_v2p,
};
use crate::config::{
    ISIZI_MAX,
    PAGE_SIZE,
    MEMORY_MAP_SIZE,
};
use crate::mm::{
    VirtAddr,
    PhysAddr,
};
// use crate::mm::{
//     // mmap,
//     // munmap,
// };


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
//     get_time_ms() as isize
// }

// NOTICE!注意：下面的是ch3的问题
// pub fn sys_get_time() -> isize {
//     debug!("[kernel]sys_get_time...{}",get_time_ms() as isize);
//     get_time_ms() as isize
// }

// pub fn sys_get_time() -> isize{
//     return get_time_ms() as isize;
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
    info!("in sys_get_time...{:#x},{}",ts as usize,_tz);
    let t = get_time_ms() as usize;

    info!("get user token...{:#x}",get_user_token());
    // let pa_top = KERNEL_SPACE.lock().v2p(VirtAddr::from(kernel_stack_top)).unwrap();
    //仿佛明白了······因为现在处理系统调用肯定是运行在内核态
    //但是这里给的是用户态的虚拟地址。那这就确实是有问题的
    //因此这里大概是真的需要取出物理地址，然后访问物理地址。
    //因为OS在页表初始化的时候以及建立了物理地址到物理地址的映射，因此直接访问物理地址也是没问题的吧大概
    let pa = current_user_v2p(VirtAddr::from(ts as usize));
    match pa {
        Some(pa_t)=>{
            // let pa_ts = usize::from(pa.unwrap()) as *mut TimeVal;
            let pa_ts = usize::from(pa_t) as *mut TimeVal;
            info!("in sys_get_time...physics addr is {:#x}",pa_ts as usize);
            unsafe{
                //为什么无法取出地址？先访问物理地址试试看啦
                // info!("in sys_get_time...{:#x}",&(*ts) as usize);
                match (*pa_ts){//这里使用指针就跑飞了。为什么？
                    //是因为虚拟地址的问题吗？
                    TimeVal => {
                        info!("sec = {}, usec = {}",(*pa_ts).sec,(*pa_ts).usec);
                        (*pa_ts).sec = t/1000;
                        (*pa_ts).usec = t*1000;
                        info!("sec = {}, usec = {}",(*pa_ts).sec,(*pa_ts).usec);
                    }
                    _ => {
                        warn!("[sys_get_time] NULL");
                    },
                    // _ => {
                    //     (*ts).sec = t/1000;
                    //     (*ts).usec = t*1000;
                    //     info!("sec = {}, usec = {}",(*ts).sec,(*ts).usec);
                    // }
                }
            }
        },
        _ =>{
            warn!("[get_time]  NONE");
        }
    }
    // unsafe{
    //     match (*ts){//这里使用指针就跑飞了。为什么？
    //         TimeVal => {
    //             // unsafe{
    //                 info!("sec = {}, usec = {}",(*ts).sec,(*ts).usec);
    //                 (*ts).sec = t/1000;
    //                 (*ts).usec = t*1000;
    //             // }
    //         }
            
    //         _ => {
    //             warn!("[sys_get_time] NULL");
    //         },
            
    //     }
    // }
    
    // 
    // unsafe{
    //     info!("....{}",t);
    //     (*ts).sec = t/1000;
    //     (*ts).usec = t*1000;
    //     info!("[ts.sec] = {}, [ts.usec] = {}",(*ts).sec,(*ts).usec);
    // }
    debug!("sys_get_time return...");
    return 0 as isize;
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
    //2.分配。如果还有空间分配成功就返回size，分配失败就返回-1
    // debug!("[kernel] sys_mmap...");

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
    debug!("[kernel] sys_munmap...");

    let result = munmap(start, len);
    if result == -1 {
        return -1 as isize;
    }
    else {
        return result * (PAGE_SIZE as isize);
    }
}