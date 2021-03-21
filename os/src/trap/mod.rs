mod context;
use crate::sbi::shutdown;

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
use crate::syscall::{
    syscall,
    syscall5,
};
use crate::task::{
    exit_current_and_run_next,
    suspend_current_and_run_next,
    current_user_token,
    current_trap_cx,
    // TASK_MANAGER,
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
    let scause = scause::read();
    let stval = stval::read();
    match scause.cause() {
        Trap::Exception(Exception::UserEnvCall) => {
            // jump to next instruction anyway
            let mut cx = current_trap_cx();
            cx.sepc += 4;
            // get system call return value
            // let result = syscall(cx.x[17], [cx.x[10], cx.x[11], cx.x[12]]);
            let result = syscall5(cx.x[17], [cx.x[10], cx.x[11], cx.x[12], cx.x[13], cx.x[14]]);
            // cx is changed during sys_exec, so we have to call it again
            cx = current_trap_cx();
            cx.x[10] = result as usize;
        }
        Trap::Exception(Exception::StoreFault) |
        Trap::Exception(Exception::StorePageFault) |
        Trap::Exception(Exception::InstructionFault) |
        Trap::Exception(Exception::InstructionPageFault) |
        Trap::Exception(Exception::LoadFault) |
        Trap::Exception(Exception::LoadPageFault) => {
            kernel_println!(
                "[kernel] {:?} in application, bad addr = {:#x}, bad instruction = {:#x}, core dumped.",
                scause.cause(),
                stval,
                current_trap_cx().sepc,
            );
            // page fault exit code
            exit_current_and_run_next(-2);
        }
        Trap::Exception(Exception::IllegalInstruction) => {
            kernel_println!("[kernel] IllegalInstruction in application, core dumped.");
            // illegal instruction exit code
            exit_current_and_run_next(-3);
        }
        Trap::Interrupt(Interrupt::SupervisorTimer) => {//发现时钟中断：
            // println!("[kernel] trap_handler::Exception::SupervisorTimer");
            set_next_trigger();//先重新设置一个 10ms 的计时器
            suspend_current_and_run_next();//调用 suspend_current_and_run_next 函数暂停当前应用并切换到下一个
        }
        _ => {
            // exit_current_and_run_next(-10);
            // kernel_println!("[kernel] Upsupported trap of app {},core dumped.", get_task_current());
            // exit_current_and_run_next();
            panic!("Unsupported trap {:?}, stval = {:#x}!", scause.cause(), stval);
        }
    }
    // drop(tm);
    trap_return();
}

#[no_mangle]
pub fn trap_return() -> ! {
    //根据汇编的结果，确实是进入了trap return函数没错
    set_user_trap_entry();
    let trap_cx_ptr = TRAP_CONTEXT;
    let user_satp = current_user_token();
    extern "C" {
        fn __alltraps();
        fn __restore();
    }
    let restore_va = __restore as usize - __alltraps as usize + TRAMPOLINE;
    unsafe {
        llvm_asm!("fence.i" :::: "volatile");
        llvm_asm!("jr $0" :: "r"(restore_va), "{a0}"(trap_cx_ptr), "{a1}"(user_satp) :: "volatile");
    }
    panic!("Unreachable in back_to_user!");
}

#[no_mangle]
pub fn trap_from_kernel() -> ! {
    panic!("a trap {:?} from kernel!", scause::read().cause());
}

pub use context::{TrapContext};
