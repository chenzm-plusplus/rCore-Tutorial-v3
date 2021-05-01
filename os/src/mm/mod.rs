mod heap_allocator;
mod address;
mod frame_allocator;
mod page_table;
mod memory_set;


pub use address::{PhysAddr, VirtAddr,VPNRange, PhysPageNum, VirtPageNum, StepByOne};
// use crate::config::{
//     PAGE_SIZE,
// };

pub use frame_allocator::{
    FrameTracker, 
    frame_alloc,
    frame_dealloc,
    frame_left,
};
pub use page_table::{
    PageTable,
    PTEFlags,
    PageTableEntry,
    translated_byte_buffer,
    translated_str,
    translated_ref,
    translated_refmut,
    UserBuffer,
    UserBufferIterator,
    check_byte_buffer_valid,
    phys_to_virt,
};

pub use memory_set::{MemorySet, KERNEL_SPACE, MapPermission};
pub use memory_set::{
    remap_test,
    kernel_token,
    // mmap,
    // munmap,
};

pub fn init() {
    heap_allocator::init_heap();
    frame_allocator::init_frame_allocator();
    KERNEL_SPACE.lock().activate();
}
