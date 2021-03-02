
/// 分配器：固定容量，每次分配 / 回收一个元素
pub trait Manager {
    /// 给定容量，创建调度器
    fn new(capacity: usize) -> Self;
    /// 找到下一个该运行的元素，找不到就返回 `None`
    fn next_task(&mut self) -> Option<usize>;
}


/// 默认使用的分配器
// pub type AllocatorImpl = StackedAllocator;
pub type ManagerImpl = SegtreeAllocator;

pub type VectorAllocatorImpl = BitmapVectorAllocator;