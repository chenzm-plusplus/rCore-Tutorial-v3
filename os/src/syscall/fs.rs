const FD_STDOUT: usize = 1;
use crate::task::get_app_address_space_current;
use crate::task::get_task_current;
use crate::task::get_user_stack_space_current;


/// 功能：将内存中缓冲区中的数据写入文件。
/// 参数：`fd` 表示待写入文件的文件描述符；
///      `buf` 表示内存中缓冲区的起始地址；
///      `len` 表示内存中缓冲区的长度。
/// 返回值：返回成功写入的长度。
/// syscall ID：64
pub fn sys_write(fd: usize, buf: *const u8, len: usize) -> isize {
    trace!("[kernel] now app {} is writing...",get_task_current());
    trace!("call sys_write......");
    debug!("fd:{},buf:{:#x},len:{}",fd,buf as usize,len);
    
    let (left,right) = get_user_stack_space_current();
    let (left2,right2) = get_app_address_space_current();
    debug!("current user stack space is...[{:#x},{:#x})",left,right);
    debug!("current user app space is...[{:#x},{:#x})",left2,right2);

    match fd {
        FD_STDOUT => {
            //检查地址范围，如果安全就允许输出
            if (left<=buf as usize && right>buf as usize+len) 
                || (buf as usize>=left2 && buf as usize + len < right2){
                let slice = unsafe { core::slice::from_raw_parts(buf, len) };
                let str = core::str::from_utf8(slice).unwrap();
                print!("{}", str);
                len as isize
            }else{
                let slice = unsafe { core::slice::from_raw_parts(buf, len) };
                let str = core::str::from_utf8(slice).unwrap();
                // print!("{}", str);
                warn!("[kernel] ILLEGAL OUTPUT {}",str);
                // print!("{}",-1);
                -1 as isize
            } 
        },
        _ => {
            // return fd as isize;
            return -1 as isize;
            panic!("Unsupported fd in sys_write!");
        }
    }
}