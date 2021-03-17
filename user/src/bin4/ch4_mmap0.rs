#![no_std]
#![no_main]

#[macro_use]
extern crate user_lib;

use user_lib::mmap;

#[no_mangle]
fn main() -> i32 {
    let start: usize = 0x10000000;
    let len: usize = 4096;
    let prot: usize = 3;
    assert_eq!(len as isize, mmap(start, len, prot));
    println!("Test 04_1 map success!");
    for i in start..(start + len) {
        let mut addr: *mut u8 = i as *mut u8;
        unsafe {
            *addr = i as u8;
        }
    }
    println!("Test 04_1 use space...");
    for i in start..(start + len) {
        let mut addr: *mut u8 = i as *mut u8;
        unsafe {
            assert_eq!(*addr, i as u8);
        }
    }
    println!("Test 04_1 OK!");
    0
}