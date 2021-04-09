#![no_std]
#![feature(global_asm)]
#![feature(llvm_asm)]

extern crate alloc;

#[macro_use]
mod console;
mod sbi;
mod block_dev;
mod layout;
mod efs;
mod bitmap;
mod vfs;
mod block_cache;

pub const BLOCK_SZ: usize = 512;
pub use block_dev::BlockDevice;
pub use efs::EasyFileSystem;
pub use vfs::Inode;
use layout::*;
use bitmap::Bitmap;
use block_cache::get_block_cache;