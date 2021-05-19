#![no_std]
#![no_main]
#![feature(llvm_asm)]

#[macro_use]
extern crate user_lib;

// use riscv::register::scause;

#[no_mangle]
fn main() -> i32 {
    println!("[00hello_world] Hello, world!");

    let t = 0;
    unsafe {
        llvm_asm!("sret");
        // llvm_asm!()
        // llvm_asm!("csrw $0, $1" :: "i"(0x200), "r"(t) :: "volatile");
    }
    0
}