pub const USER_STACK_SIZE: usize = 4096 * 2;
pub const KERNEL_STACK_SIZE: usize = 4096 * 2;
pub const KERNEL_HEAP_SIZE: usize = 0x20_0000;

#[cfg(feature = "board_k210")]
pub const MEMORY_END: usize = 0x80600000;

#[cfg(feature = "board_qemu")]
pub const MEMORY_END: usize = 0x80800000;

pub const PAGE_SIZE: usize = 0x1000;
pub const PAGE_SIZE_BITS: usize = 0xc;

pub const TRAMPOLINE: usize = usize::MAX - PAGE_SIZE + 1;
pub const TRAP_CONTEXT: usize = TRAMPOLINE - PAGE_SIZE;

pub const TASK_PRIORITY_INIT: usize = 16;
//===============
// pub const PAGE_SIZE: usize = 0x1000;//16进制的100就是4096个字节
// pub const PAGE_SIZE_BITS: usize = 0xc;//表示我要用多少位的数表示一个page,也就是page offset的位数。12位
pub const MEMORY_MAP_SIZE: usize = 0x4_000_000;//表示进行一次内存映射最多映射多少字节

// pub const TRAMPOLINE: usize = usize::MAX - PAGE_SIZE + 1;
// pub const TRAP_CONTEXT: usize = TRAMPOLINE - PAGE_SIZE;
// /// Return (bottom, top) of a kernel stack in kernel space.
// pub fn kernel_stack_position(app_id: usize) -> (usize, usize) {
//     let top = TRAMPOLINE - app_id * (KERNEL_STACK_SIZE + PAGE_SIZE);//体现在这里，两个相邻内核栈之间会预留一个保护page
//     let bottom = top - KERNEL_STACK_SIZE;
//     (bottom, top)
// }
pub const ISIZI_MAX: isize = isize::MAX;
// // pub const BIG_STRIDE: usize = 1024;//一个预先定义的大常数···多大好呢？就这么大好了
pub const BIG_STRIDE: usize = 4096*4096;
// pub const MAX_RUN_TIME_MS: usize = 600;


//for map

#[cfg(feature = "board_k210")]
pub const CLOCK_FREQ: usize = 403000000 / 62;

#[cfg(feature = "board_qemu")]
pub const CLOCK_FREQ: usize = 12500000;