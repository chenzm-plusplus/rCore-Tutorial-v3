use crate::timer::{
    // get_time,
    get_time_ms,
    TimeVal
};
use crate::mm::{
    VirtAddr,
};

use crate::task::{
    current_user_v2p,
};

// pub fn sys_get_time() -> isize {
//     get_time_ms() as isize
// }


pub fn sys_get_time(ts: *mut TimeVal, _tz: usize) -> isize{
    info!("in sys_get_time...{:#x},{}",ts as usize,_tz);
    let t = get_time_ms() as usize;

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
                }
            }
        },
        _ =>{
            warn!("[get_time]  NONE");
        }
    }
    debug!("sys_get_time return...");
    return 0 as isize;
}
