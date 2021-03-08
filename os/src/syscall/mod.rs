const SYSCALL_WRITE: usize = 64;
const SYSCALL_EXIT: usize = 93;
const SYSCALL_YIELD: usize = 124;
const SYSCALL_GETTIMEOFDAY: usize = 169;
const SYSCALL_SET_PRIORITY: usize = 140;
const SYSCALL_MMAP: usize = 222;
const SYSCALL_MUNMAP: usize = 215;

mod fs;
mod process;

use fs::*;
use process::*;
use crate::timer::TimeVal;

pub fn syscall(syscall_id: usize, args: [usize; 3]) -> isize {
    // debug!("in syscall...{},{},{},{}",syscall_id,args[0],args[1],args[2]);
    match syscall_id {
        SYSCALL_WRITE => sys_write(args[0], args[1] as *const u8, args[2]),//TODO:接下来就是修改sys_write的问题了
        SYSCALL_EXIT => sys_exit(args[0] as i32),
        SYSCALL_YIELD => sys_yield(),
        //[time as *const _ as usize, tz, 0]
        SYSCALL_GETTIMEOFDAY => sys_get_time(args[0] as *mut TimeVal, args[1]),
        SYSCALL_SET_PRIORITY => sys_set_priority(args[0]),
        SYSCALL_MMAP => sys_mmap(args[0],args[1],args[2]),
        SYSCALL_MUNMAP => sys_munmap(args[0],args[1]),
        _ => panic!("Unsupported syscall_id: {}", syscall_id),
    }
}