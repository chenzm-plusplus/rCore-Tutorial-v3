const FD_STDOUT: usize = 1;
use crate::batch::print_app_info;
use crate::batch::address_space_current;
use crate::batch::current_user_stack_space;
use crate::batch::print_current_app_info;
use crate::batch::app_base_address;

/// 功能：将内存中缓冲区中的数据写入文件。
/// 参数：`fd` 表示待写入文件的文件描述符；
///      `buf` 表示内存中缓冲区的起始地址；
///      `len` 表示内存中缓冲区的长度。
/// 返回值：返回成功写入的长度。
/// syscall ID：64
/// 
pub fn sys_write(fd: usize, buf: *const u8, len: usize) -> isize {
    info!("call sys_write......");
    debug!("fd:{},buf:{:#x},len:{}",fd,buf as usize,len);
    print_app_info();

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
    debug!("current user stack space is...[{:#x},{:#x})",left,right);
    print_current_app_info();
    // if left<=buf as usize && right>buf as usize+len{
    //     debug!("LEGAL OUTPUT");
    // }else{
    //     warn!("ILLEGAL OUTPUT");
    // }

    match fd {
        FD_STDOUT => {
            if (left<=buf as usize && right>buf as usize+len) || (buf as usize>= app_base_address()){
                let slice = unsafe { core::slice::from_raw_parts(buf, len) };
                let str = core::str::from_utf8(slice).unwrap();
                print!("{}", str);
                len as isize
            }else{
                warn!("ILLEGAL OUTPUT");
                print!("{}",-1);
                2 as isize
            }
            
        },
        _ => {
            panic!("Unsupported fd in sys_write!");
        }
    }
}