#![no_std]
#![no_main]
#![feature(global_asm)]
#![feature(llvm_asm)]
#![feature(panic_info_message)]
#![feature(const_in_array_repeat_expressions)]
#![feature(alloc_error_handler)]

#[macro_use]
extern crate log;

extern crate alloc;
// extern crate rvm;

#[macro_use]
extern crate bitflags;

#[macro_use]
mod logging;

#[macro_use]
mod console;
mod lang_items;
mod sbi;
mod syscall;
mod trap;
mod config;
mod task;
mod timer;
mod mm;
mod fs;
mod drivers;
mod hypervisor;
mod rvminode;
// #[cfg(feature = "hypervisor")]
// pub mod rvm;

use hypervisor::*;
use rvminode::*;

global_asm!(include_str!("entry.asm"));

fn clear_bss() {
    extern "C" {
        fn sbss();
        fn ebss();
    }
    (sbss as usize..ebss as usize).for_each(|a| unsafe { (a as *mut u8).write_volatile(0) });
}

#[no_mangle]
pub fn rust_main() -> ! {
    clear_bss();
    logging::init();

    kernel_println!("Hello, world!");
    //分页模式是在内核初始化期间开启的，也就是说现在已经开启分页模式了！
    mm::init();
    mm::remap_test();
    trap::init();

    // unsafe{
    //     let add = 0x0000_0000_9000_0000 as u64;
    //     info!("address {:#x}",*(add as *const u64));
    // }

    // trap::enable_timer_interrupt();
    // timer::set_next_trigger();

    // fs::list_apps();
    // task::add_initproc();
    // task::run_tasks();
    info!("info");
    rvm::check_hypervisor_feature();
    run_hypervisor();
    print!("hello world in kernel");
    loop{}
    panic!("Unreachable in rust_main!");
}
