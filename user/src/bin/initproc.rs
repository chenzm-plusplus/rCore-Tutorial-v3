#![no_std]
#![no_main]

#[macro_use]
extern crate user_lib;

use user_lib::{
    fork,
    wait,
    exec,
    yield_,
};

#[no_mangle]
fn main() -> i32 {
    if fork() == 0 {
        exec("user_shell\0", &[0 as *const u8]);
    } else {
        loop {
            let mut exit_code: i32 = 0;
            let pid = wait(&mut exit_code);//这一行是调用了wait，在用户程序里面调用wait会进入到userlib里面调用wait，进而调用sys_waitpid系统调用
            //而sys_waitpid系统调用返回-1什么意思呢，就是我的initproc想要等待的子进程不存在，就是initproc没有子进程的时候
            //说实在话这好像是一个不会出现的事情，因为user_shell是死循环，永远不会结束。
            if pid == -1 {
                yield_();
                continue;
            }
            //否则为什么可以认为直接释放了呢，因为在上面执行wait（类似系统调用的东西的时候），
            //如果在那个函数里面发现所有子进程都没有结束，那么就已经把自己的cpu资源都交出去了
            //也就是说当真的成功释放子进程资源的时候，wait函数才会返回。
            //所以这里直接print就可以了
            println!(
                "[initproc] Released a zombie process, pid={}, exit_code={}",
                pid,
                exit_code,
            );
        }
    }
    0
}