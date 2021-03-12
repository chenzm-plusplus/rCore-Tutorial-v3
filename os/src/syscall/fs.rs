const FD_STDOUT: usize = 1;
use crate::batch::print_app_info;
use crate::batch::address_space_current;
use crate::batch::current_user_stack_space;
use crate::batch::print_current_app_info;
use crate::batch::app_address_space;

/// 功能：将内存中缓冲区中的数据写入文件。
/// 参数：`fd` 表示待写入文件的文件描述符；
///      `buf` 表示内存中缓冲区的起始地址；
///      `len` 表示内存中缓冲区的长度。
/// 返回值：返回成功写入的长度。
/// syscall ID：64
/// 
pub fn sys_write(fd: usize, buf: *const u8, len: usize) -> isize {
    trace!("call sys_write......");
    trace!("fd:{},buf:{:#x},len:{}",fd,buf as usize,len);

    /*
    //事实上，用户代码空间的内容应该是可读、可执行但是不可写的
    //硬想输出的话好像也不是不可以？
    let (left,right) = address_space_current();
    if left<=buf as usize && right>buf as usize+len{
        warn!("LEGAL OUTPUT");
    }else{
        debug!("ILLEGAL OUTPUT");
    }
    */
    
    let (left,right) = current_user_stack_space();
    let (left2,right2) = app_address_space();
    debug!("current user stack space is...[{:#x},{:#x})",left,right);

    match fd {
        FD_STDOUT => {
            //检查地址范围，如果安全就允许输出
            if (left<=buf as usize && right>buf as usize+len) || (buf as usize>=left2 && buf as usize + len < right2){
                let slice = unsafe { core::slice::from_raw_parts(buf, len) };
                let str = core::str::from_utf8(slice).unwrap();
                print!("{}", str);
                len as isize
            }else{
                warn!("[kernel] ILLEGAL OUTPUT");
                // print!("{}",-1);
                -1 as isize
            } 
        },
        _ => {
            panic!("Unsupported fd in sys_write!");
        }
    }
}