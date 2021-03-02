pub const USER_STACK_SIZE: usize = 4096 * 2;
pub const KERNEL_STACK_SIZE: usize = 4096 * 2;
pub const KERNEL_HEAP_SIZE: usize = 0x30_0000;
pub const MAX_APP_NUM: usize = 40;
pub const APP_BASE_ADDRESS: usize = 0x80400000;
pub const APP_SIZE_LIMIT: usize = 0x20000;
pub const ISIZI_MAX: isize = isize::MAX;
// pub const BIG_STRIDE: usize = 1024;//一个预先定义的大常数···多大好呢？就这么大好了
pub const BIG_STRIDE: usize = 4096;
pub const MAX_RUN_TIME_MS: usize = 1200;

#[cfg(feature = "board_k210")]
pub const CLOCK_FREQ: usize = 403000000 / 62;

#[cfg(feature = "board_qemu")]
pub const CLOCK_FREQ: usize = 12500000;