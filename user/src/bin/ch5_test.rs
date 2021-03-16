#![no_std]
#![no_main]

#[macro_use]
extern crate user_lib;
use user_lib::{spawn, wait, fork, exit};

fn get_a() -> i32{
    3
}

fn get_b() -> i32{
    4
}

#[allow(unreachable_code)]
#[no_mangle]
pub fn main() -> i32{
    let a = get_a();
    if fork() == 0 {
        let b = get_b();
        println!("a + b = {}", a + b);
        exit(0);
    }
    println!("a = {}", a);
    0
}