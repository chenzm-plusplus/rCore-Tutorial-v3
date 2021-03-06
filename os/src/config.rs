pub const USER_STACK_SIZE: usize = 4096 * 2;
pub const KERNEL_STACK_SIZE: usize = 4096 * 2;
pub const KERNEL_HEAP_SIZE: usize = 0x30_0000;
pub const MEMORY_END: usize = 0x80800000;
pub const PAGE_SIZE: usize = 0x1000;
pub const PAGE_SIZE_BITS: usize = 0xc;

pub const TRAMPOLINE: usize = usize::MAX - PAGE_SIZE + 1;
pub const TRAP_CONTEXT: usize = TRAMPOLINE - PAGE_SIZE;
/// Return (bottom, top) of a kernel stack in kernel space.
pub fn kernel_stack_position(app_id: usize) -> (usize, usize) {
    let top = TRAMPOLINE - app_id * (KERNEL_STACK_SIZE + PAGE_SIZE);
    let bottom = top - KERNEL_STACK_SIZE;
    (bottom, top)
}
// pub const MAX_APP_NUM: usize = 64;
// pub const APP_BASE_ADDRESS: usize = 0x80400000;
// pub const APP_SIZE_LIMIT: usize = 0x20000;
// pub const ISIZI_MAX: isize = isize::MAX;
// // pub const BIG_STRIDE: usize = 1024;//一个预先定义的大常数···多大好呢？就这么大好了
// pub const BIG_STRIDE: usize = 4096;
// pub const MAX_RUN_TIME_MS: usize = 600;

#[cfg(feature = "board_k210")]
pub const CLOCK_FREQ: usize = 403000000 / 62;

#[cfg(feature = "board_qemu")]
pub const CLOCK_FREQ: usize = 12500000;