mod context;

use riscv::register::{
    mtvec::TrapMode,
    stvec,
    scause::{
        self,
        Trap,
        Exception,
    },
    stval,
};
use crate::syscall::syscall;
use crate::batch::run_next_app;

global_asm!(include_str!("trap.S"));

pub fn init() {
    extern "C" { fn __alltraps(); }
    unsafe {
        stvec::write(__alltraps as usize, TrapMode::Direct);
    }
}

//留下的问题：trap——handler传入的参数只有寄存器们。怎么判断是不是有超出内存区域？
#[no_mangle]
pub fn trap_handler(cx: &mut TrapContext) -> &mut TrapContext {
    trace!("trap_handler");
    let scause = scause::read();
    let stval = stval::read();
    match scause.cause() {
        Trap::Exception(Exception::UserEnvCall) => {
            trace!("trap_handler::Exception::UserEnvCall");
            cx.sepc += 4;
            //暂且只在这里执行了syscall
            //ID，args
            //我觉得要不就在这里判断是否可以执行好了······
            //
            // 参数：`fd` 表示待写入文件的文件描述符；
            //      `buf` 表示内存中缓冲区的起始地址；
            //      `len` 表示内存中缓冲区的长度。
            
            //判断有没有超过···如果超过了就执行，否则?
            // trace!("fd:{},buf:{:#x},len:{}",cx.x[10],cx.x[11],cx.x[12]);
            // let (left,right) = address_space_current();
            // if left<=cx.x[11] && right>cx.x[11]+cx.x[12]{
            debug!("syscall...");
            cx.x[10] = syscall(cx.x[17], [cx.x[10], cx.x[11], cx.x[12]]) as usize;
            // }
        }
        Trap::Exception(Exception::StoreFault) |
        Trap::Exception(Exception::StorePageFault) => {
            println!("[kernel] PageFault in application, core dumped.");
            run_next_app();
        }
        Trap::Exception(Exception::IllegalInstruction) => {
            println!("[kernel] IllegalInstruction in application, core dumped.");
            run_next_app();
        }
        _ => {
            panic!("Unsupported trap {:?}, stval = {:#x}!", scause.cause(), stval);
        }
    }
    cx
}

pub use context::TrapContext;