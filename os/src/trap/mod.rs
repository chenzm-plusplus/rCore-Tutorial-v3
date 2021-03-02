mod context;

use riscv::register::{
    mtvec::TrapMode,
    stvec,
    scause::{
        self,
        Trap,
        Exception,
        Interrupt,
    },
    stval,
    sie,
};
use crate::syscall::syscall;
use crate::task::{
    exit_current_and_run_next,
    suspend_current_and_run_next,
    get_task_current,
    get_my_num_app,
};
use crate::timer::set_next_trigger;
use crate::timer::{get_time,get_time_ms};
use crate::config::MAX_RUN_TIME_MS;

global_asm!(include_str!("trap.S"));

pub fn init() {
    extern "C" { fn __alltraps(); }
    unsafe {
        stvec::write(__alltraps as usize, TrapMode::Direct);
    }
}

pub fn enable_timer_interrupt() {
    unsafe { sie::set_stimer(); }
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
            cx.x[10] = syscall(cx.x[17], [cx.x[10], cx.x[11], cx.x[12]]) as usize;
        }
        Trap::Exception(Exception::StoreFault) |
        Trap::Exception(Exception::StorePageFault) => {
            println!("[kernel] PageFault in application, bad addr = {:#x}, bad instruction = {:#x}, core dumped.", stval, cx.sepc);
            exit_current_and_run_next();
        }
        Trap::Exception(Exception::IllegalInstruction) => {
            println!("[kernel] IllegalInstruction in application, core dumped.");
            exit_current_and_run_next();
        }
        Trap::Interrupt(Interrupt::SupervisorTimer) => {//发现时钟中断：
            trace!("trap_handler::Exception::SupervisorTimer");
            //TEMP::先检查是否已经超过了规定的时间
            if get_time_ms()>MAX_RUN_TIME_MS*get_my_num_app(){
                panic!("[kernel] Run toooooooo loooooooong time!");
            }
            set_next_trigger();//先重新设置一个 10ms 的计时器
            suspend_current_and_run_next();//调用 suspend_current_and_run_next 函数暂停当前应用并切换到下一个
            info!("[kernel] now app {} is running...",get_task_current());
        }
        _ => {
            println!("[kernel] Upsupported trap of app {}", get_task_current());
            panic!("Unsupported trap {:?}, stval = {:#x}!", scause.cause(), stval);
        }
    }
    cx
}

pub use context::TrapContext;