use riscv::register::time;
use crate::sbi::set_timer;
use crate::config::CLOCK_FREQ;

const TICKS_PER_SEC: usize = 100;
const MSEC_PER_SEC: usize = 1000;

#[repr(C)]
#[derive(Debug,Clone,Copy)]
pub struct TimeVal {
    pub sec: usize,
    pub usec: usize,
}

// impl TimeVal {
    // pub fn new() -> Self {
    //     TimeVal {
    //         sec: 0,
    //         usec: 0,
    //     }
    // }
// }

//时钟周期数
pub fn get_time() -> usize {
    time::read()
}

//毫秒数
pub fn get_time_ms() -> usize {
    info!("in get_time_ms,{},{},{},{}",get_time(),CLOCK_FREQ,MSEC_PER_SEC,time::read() / (CLOCK_FREQ / MSEC_PER_SEC));
    time::read() / (CLOCK_FREQ / MSEC_PER_SEC)
}

pub fn set_next_trigger() {
    trace!("timer::set_next_trigger....new timer is {}",get_time() + CLOCK_FREQ / TICKS_PER_SEC);
    set_timer(get_time() + CLOCK_FREQ / TICKS_PER_SEC);
}
