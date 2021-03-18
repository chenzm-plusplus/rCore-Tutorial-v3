#![no_std]
#![no_main]

#[macro_use]
extern crate user_lib;

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

// #[no_mangle]
// pub fn test() {
//     let scause = scause::read();
// }

/// 正确输出：
/// Hello world from user mode program!
/// Test hello_world OK!
/// 

#[no_mangle]
pub fn main() -> i32 {
    // test();
    println!("Hello world from user mode program!\nTest hello_world OK!");
    0
}