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
    current_user_token,
    // current_trap_cx,
    TASK_MANAGER,
    get_task_current,
};
use crate::timer::set_next_trigger;
use crate::config::{TRAP_CONTEXT, TRAMPOLINE};
// use crate::timer::set_next_trigger;
// use crate::timer::{get_time,get_time_ms};
// use crate::config::MAX_RUN_TIME_MS;

global_asm!(include_str!("trap.S"));

pub fn init() {
    set_kernel_trap_entry();
}

fn set_kernel_trap_entry() {
    unsafe {
        stvec::write(trap_from_kernel as usize, TrapMode::Direct);
    }
}

fn set_user_trap_entry() {
    unsafe {
        stvec::write(TRAMPOLINE as usize, TrapMode::Direct);
    }
}

pub fn enable_timer_interrupt() {
    unsafe { sie::set_stimer(); }
}

#[no_mangle]
pub fn trap_handler() -> ! {
    // debug!("in trap_handler......");
    set_kernel_trap_entry();
    // 
    // let tm = TASK_MANAGER;
    // let cx = current_trap_cx();
    let cx = TASK_MANAGER.get_current_trap_cx();
    // debug!("in trap_handler......");

    let scause = scause::read();
    let stval = stval::read();
    match scause.cause() {
        Trap::Exception(Exception::UserEnvCall) => {
            // println!("[kernel]trap_handler::Exception::UserEnvCall");
            cx.sepc += 4;
            cx.x[10] = syscall(cx.x[17], [cx.x[10], cx.x[11], cx.x[12]]) as usize;
        }
        Trap::Exception(Exception::StoreFault) |
        Trap::Exception(Exception::StorePageFault) => {
            kernel_println!("PageFault in application, bad addr = {:#x}, bad instruction = {:#x}, core dumped.", stval, cx.sepc);
            exit_current_and_run_next();
        }
        Trap::Exception(Exception::IllegalInstruction) => {
            kernel_println!("IllegalInstruction in application, core dumped.");
            exit_current_and_run_next();
        }
        Trap::Interrupt(Interrupt::SupervisorTimer) => {//发现时钟中断：
            // println!("[kernel] trap_handler::Exception::SupervisorTimer");
            set_next_trigger();//先重新设置一个 10ms 的计时器
            suspend_current_and_run_next();//调用 suspend_current_and_run_next 函数暂停当前应用并切换到下一个
            info!("[kernel] now app {} is running...",get_task_current());
        }
        _ => {
            println!("[kernel] Upsupported trap of app {},core dumped.", get_task_current());
            exit_current_and_run_next();
            panic!("Unsupported trap {:?}, stval = {:#x}!", scause.cause(), stval);
        }
    }
    // drop(tm);
    trap_return();
}

#[no_mangle]
pub fn trap_return() -> ! {
    //根据汇编的结果，确实是进入了trap return函数没错
    // println!("[kernel] in trap_return...");
    set_user_trap_entry();
    // println!("[kernel] after set user trap entry");
    let trap_cx_ptr = TRAP_CONTEXT;
    let user_satp = current_user_token();
    // info!("[kernel] user_satp is...{:#x}",user_satp);
    extern "C" {
        fn __alltraps();
        fn __restore();
    }
    let restore_va = __restore as usize - __alltraps as usize + TRAMPOLINE;
    // info!("[kernel] restore_va is...{:#x}",restore_va);
    unsafe {
        llvm_asm!("fence.i" :::: "volatile");
        llvm_asm!("jr $0" :: "r"(restore_va), "{a0}"(trap_cx_ptr), "{a1}"(user_satp) :: "volatile");
    }
    panic!("Unreachable in back_to_user!");
}

#[no_mangle]
pub fn trap_from_kernel() -> ! {
    panic!("a trap from kernel!");
}

pub use context::{TrapContext};
