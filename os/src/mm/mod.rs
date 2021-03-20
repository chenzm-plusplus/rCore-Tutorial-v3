mod heap_allocator;
mod address;
mod frame_allocator;
mod page_table;
mod memory_set;

// use crate::config::{
//     PAGE_SIZE,
// };
use page_table::{PageTable, PTEFlags};
use address::{VPNRange, StepByOne};
pub use address::{PhysAddr, VirtAddr, PhysPageNum, VirtPageNum};
pub use frame_allocator::{
    FrameTracker, 
    frame_alloc,
    frame_left,
};
pub use page_table::{
    PageTableEntry,
    translated_byte_buffer,
    translated_str,
    translated_refmut,
    UserBuffer,
    UserBufferIterator,
    check_byte_buffer_valid,
};
pub use memory_set::{MemorySet, KERNEL_SPACE, MapPermission};
pub use memory_set::{
    remap_test,
    // mmap,
    // munmap,
};

pub fn init() {
    heap_allocator::init_heap();
    frame_allocator::init_frame_allocator();
    KERNEL_SPACE.lock().activate();
}
