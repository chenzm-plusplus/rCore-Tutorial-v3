# RustOS-lab3 实验报告

陈张萌 2017013678 计74

[TOC]

## 本次实验增加了什么？

1. 将实验2的对sys_write的检查迁移过来。为什么需要重新写呢，因为允许多程序并行之后，用户栈地址和用户程序地址都发生了变化，所以需要修改地址判断。
2. 增加了系统调用：sys_get_time和sys_set_priority
3. 增加了stride调度算法
4. 为了使用BinaryHeap，增加了chapter4中的动态内存分配，但事实是最后还是选择了用数组形式存储每个进程的stride相关信息。
5. 做出以上处理的原因在于：要选择执行的进程要满足处于Ready状态，但是stride最小的进程并不一定是Ready的。对此有两种解决方式：一是只把Ready状态的进程放进堆里，但是此种解决方式需要在进程状态改变时更新堆的信息，取出进程的最坏情况时间复杂度为O(NlogN)，而且代码非常不简洁。另一种方法是把所有进程都放进堆里，每次取出时检查是否满足Ready状态，最坏情况下取出进程时间复杂度也要O(NlogN)；两种解决方式均不如直接选择使用数组存储进程。

## 简答作业

### 问题1

> 简要描述这一章的进程调度策略。何时进行进程切换？如何选择下一个运行的进程？如何处理新加入的进程？

在每次时钟中断产生的时候进行进程切换。

使用stride算法选择下一个运行的进程。

暂时无法处理新加入的进程，因为本章采用的方式是在操作系统启动的时候，检查有多少个待运行程序并一次性把所有进程都加载进来，进程管理模块也是在初始化的时候就确定了大小。

### 问题2

> 在 C 版代码中，同样实现了类似 RR 的调度算法，但是由于没有 VecDeque 这样直接可用的数据结构（Rust很棒对不对），C 版代码的实现严格来讲存在一定问题。大致情况如下：C版代码使用一个进程池（也就是一个 struct proc 的数组）管理进程调度，当一个时间片用尽后，选择下一个进程逻辑在 [chapter３相关代码](https://github.com/DeathWish5/ucore-Tutorial/blob/ch3/kernel/proc.c#L60-L74) ，也就是当第 i 号进程结束后，会以 i -> max_num -> 0 -> i 的顺序遍历进程池，直到找到下一个就绪进程。C 版代码新进程在调度池中的位置选择见 [chapter5相关代码](https://github.com/DeathWish5/ucore-Tutorial/blob/ch5/kernel/proc.c#L90-L98) ，也就是从头到尾遍历进程池，找到第一个空位。

#### (2-1) 在目前这一章（chapter3）两种调度策略有实质不同吗？

> 考虑在一个完整的 os 中，随时可能有新进程产生，这两种策略是否实质相同？

目前没有实质不同。由于目前的所有进程都会一次性加载完成，max_num是不变的，因此只有效率上存在一定差别，但是每个进程都有机会轮转到，也满足先产生的进程先执行的特点。

但是在完整的os中，随时都会用新的进程产生，下面的问题就是先产生的进程后执行的反例。

#### (2-2) 其实 C 版调度策略在公平性上存在比较大的问题

> 请找到一个进程产生和结束的时间序列，使得在该调度算法下发生：先创建的进程后执行的现象。你需要给出类似下面例子的信息（有更详细的分析描述更好，但尽量精简）。同时指出该序列在你实现的 stride 调度算法下顺序是怎样的？

例如进程池大小为4。

###### 调度顺序举例

| 时间点   | 0               | 1    | 2    | 3    | 4      | 5              | 6      | 7    | 8    |
| -------- | --------------- | ---- | ---- | ---- | ------ | -------------- | ------ | ---- | ---- |
| 运行进程 |                 | p1   | p2   | p3   | p4     | p1             | p2     | p6   | p5   |
| 事件     | p1,p2,p3,p4产生 |      |      |      | p4结束 | p5产生，p3结束 | p6产生 |      |      |
|          |                 |      |      |      |        |                |        |      |      |

进程产生顺序：1，2，3，4，5，6；

进程执行顺序：1，2，3，4，1，2，6，5；

因为不考虑进程优先级，允许进程在其他进程执行时结束。因此可以进程池里下标编号较大位置的进程先结束，下标编号较小的进程后结束，那么新产生的进程就会放在靠前的位置，就会先执行。

而在stride算法中，刚产生的进程stride=0，因此一定是在产生进程后的下一次切换进程执行状态时就会马上执行（除非一次产生很多个进程）。

### 问题3

#### 1.实际情况是轮到P1执行吗？

并不是，当使用8个bit的无符号整数存储时，能表示的范围是0～255。在P2执行一个时间片后，会发生溢出，导致P2的stride在执行后本来应该比P1大，却由于溢出而变得比P1小了。

#### 2.为何能做到 STRIDE_MAX – STRIDE_MIN <= BigStride / 2？

数学归纳法：

假设在第n步满足 `STRIDE_MAX(n) – STRIDE_MIN(n) <= BigStride / 2`，那么在第n+1步，会增加的一定是 `STRIDE_MIN(n)` ，增加的步长为 `PASS(n)`， `STRIDE_MIN(n+1)= min{STRIDE_MIN(n)+PASS(n),STRIDE_MIN2(n)（即：第n步时的倒数第2小的stride）}` 

如果 `STRIDE(n)+PASS(n)` 是第n+1步最小的stride，
那么 `STRIDE_MAX(n+1)=STRIDE_MAX(n)`  ，
因此 ` STRIDE_MAX(n+1) – STRIDE_MIN(n+1) <=STRIDE_MAX(n) – STRIDE_MIN(n) <= BigStride / 2 ` 仍然成立

如果 `STRIDE_MIN2(n)` 是第n+1步最小的stride，那么 `STRIDE_MAX(n+1)=max{STRIDE_MAX(n),STRIDE_MIN(n)+PASS(n)}` 。
而 `STRIDE_MAX(n)-STRIDE_MIN2(n)<=STRIDE_MAX(n) – STRIDE_MIN(n) <= BigStride / 2 ` ，
且 `STRIDE_MIN(n)+PASS(n)-STRIDE_MIN2(n)<=PASS(n)<= BigStride / 2 ` ，
因此 `STRIDE_MAX(n+1)-STRIDE_MIN(n+1) <= BigStride/2`  仍然成立。

综上当第n步满足时，第n+1步仍然满足。

在初始条件下，所有进程的Stride都为0，自然满足条件。由数学归纳可知，每一步都可以满足 `STRIDE_MAX – STRIDE_MIN <= BigStride / 2` 。

#### 3. 请补全如下 `partial_cmp` 函数（假设永远不会相等）。

```rust
use core::cmp::Ordering;
use crate::config::BIG_STRIDE;

struct Stride(u64);

impl PartialOrd for Stride {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
      if self.0 < other.0{
            if other.0 - self.0 < BigStride as u64 {
                return Some(Ordering::Less);
            }else{
                return Some(Ordering::Greater);
            }
        }else {
            if self.0 - other.0 < BigStride as u64 {
                return Some(Ordering::Less);
            }else{
                return Some(Ordering::Greater);
            }
        }
    }
}

impl PartialEq for Person {
    fn eq(&self, other: &Self) -> bool {
        false
    }
}
```

## 你对本次实验设计及难度/工作量的看法，以及有哪些需要改进的地方

我做的时候觉得思路比较清楚，工作量也很合适，总体来说难度属于中等偏下吧～前两次是不是有点太简单了，只能当成熟悉Rust语法&&代码结构了······

需要改进的地方······可能是由于和ch2相比架构的改变，导致需要24K纯手工merge代码（约等于重写），确实是有点惊喜Orz。