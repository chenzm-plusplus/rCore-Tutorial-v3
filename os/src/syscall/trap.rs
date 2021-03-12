use crate::timer::{
    get_time_ms,
    TimeVal
};

pub fn sys_get_time() -> isize {
    get_time_ms() as isize
}

// pub fn sys_get_time(ts: *mut TimeVal, _tz: usize) -> isize{
//     // match (*ts){
//     //     Null => {},
//     //     _ => {
//     //         unsafe{
//     //             (*ts).sec = get_time_ms()/1000;
//     //             (*ts).usec = get_time_ms()*1000;
//     //         }
//     //     }
//     // }
//     unsafe{
//         (*ts).sec = get_time_ms()/1000;
//         (*ts).usec = get_time_ms()*1000;
//     }
//     0
// }