// //! Implement hypervisor using rvm crate

// #![deny(non_upper_case_globals)]
// #![deny(dead_code)]
// #![deny(unused_mut)]
// #![deny(unused_variables)]
// #![deny(unused_imports)]

// use crate::mm::{PhysAddr};
// use rcore_fs::vfs::FsError;
// use rvm::RvmError;

// mod inode;
// mod memory;
// mod structs;

//我觉得：
//1，修改opensbi

// pub use inode::RvmINode;

// fn into_fs_error(e: RvmError) -> FsError {
//     match e {
//         RvmError::Internal => FsError::DeviceError,
//         RvmError::NotSupported => FsError::NotSupported,
//         RvmError::NoMemory => FsError::NoDeviceSpace,
//         RvmError::InvalidParam => FsError::InvalidParam,
//         RvmError::OutOfRange => FsError::InvalidParam,
//         RvmError::BadState => FsError::DeviceError,
//         RvmError::NotFound => FsError::InvalidParam,
//     }
// }

// mod rvm_extern_fn {
//     use crate::memory::{frame_alloc, frame_dealloc, phys_to_virt};
//     #[rvm::extern_fn(frame_alloc)]
//     fn rvm_frame_alloc() -> Option<usize> {
//         frame_alloc()
//     }

//     //paddr to paddnum
//     #[rvm::extern_fn(frame_dealloc)]
//     fn rvm_frame_dealloc(paddr: usize) {
//         let paddr = PhysAddr::from(paddr);
//         //RVM给了HostOS一个物理地址，然后我需要先把这个usize转换成物理地址
//         //判断它是否对齐了，然后再来真的释放物理内存
//         if(paddr.aligned()){
//             frame_dealloc(paddr);
//         }
//     }

//     #[rvm::extern_fn(phys_to_virt)]
//     fn rvm_phys_to_virt(paddr: usize) -> usize {
//         phys_to_virt(paddr)
//     }

//     #[cfg(target_arch = "x86_64")]
//     #[rvm::extern_fn(x86_all_traps_handler_addr)]
//     unsafe fn rvm_x86_all_traps_handler_addr() -> usize {
//         extern "C" {
//             fn __alltraps();
//         }
//         __alltraps as usize
//     }

//     #[cfg(target_arch = "riscv64")]
//     #[rvm::extern_fn(x86_all_traps_handler_addr)]
//     unsafe fn rvm_x86_all_traps_handler_addr() -> usize {
//         extern "C" {
//             fn __alltraps();
//         }
//         __alltraps as usize
//     }
// }
