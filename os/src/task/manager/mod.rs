
// /// 调度：每次调度一个线程
// pub trait Manager {
//     /// 给定容量，创建调度器
//     fn new(capacity: usize) -> Self;
//     ///
//     fn task_now(&mut self) -> usize;
//     /// 找到下一个该运行的元素，找不到就返回 `None`
//     fn task_next(&mut self) -> Option<usize>;
// }


// /// 默认使用的分配器
// // pub type AllocatorImpl = StackedAllocator;
// pub type ManagerImpl = SegtreeAllocator;

// pub type VectorAllocatorImpl = BitmapVectorAllocator;