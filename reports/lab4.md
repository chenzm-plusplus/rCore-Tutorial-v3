# RustOS-lab4 实验报告

陈张萌 2017013678 计74

[TOC]

## 本次实验增加了什么？

1. 增加了物理内存动态分配。在OS启动时对物理内存分配器进行初始化，使得OS中的物理内存分配机制使用我们提供的stack分配策略。
2. 增加了分页机制，为每个进程提供虚拟地址空间和页表，为每个物理地址建立到自己的一一映射以便OS在开启分页后仍然能方便地访问物理地址。
3. 增加了mmap和munmap系统调用。事实上只要调用代码框架中已经写好的函数就可以了，需要自己完成的函数是对map/unmap的失败情况进行检查。

## 简答作业

### 问题1

> 请列举 SV39 页表页表项的组成，结合课堂内容，描述其中的标志位有何作用／潜在作用？

页表项的高44位表示ppn，即物理页号；页表项的低8位是标志位：V（表示次页表有效）,R（可读）,W（可写）,X（可执行）,U（用户态可访问）,G（？？？）,A（？？）,D（？？）。

利用标志位，可以和CPU协同工作，提供访问权限控制、地址保护等功能。例如当一个页在U态可访问时可以将标志位U置为1，这样CPU在执行时就知道如果一个用户程序的虚拟地址对应的页表标志位为U，因此就可以允许其进行地址转换，进而允许访问。

还可以帮助OS进行修改页表的工作。例如在进行map时，可以用虚拟地址找到对应的页表项并检查valid位，据此判断这是新分配的页表项还是已经map过的页表项。

### 问题2

> 缺页指的是进程访问页面时页面不在页表中或在页表中无效的现象，此时 MMU 将会返回一个中断，告知 os 进程内存访问出了问题。os 选择填补页表并重新执行异常指令或者杀死进程。

#### (2-1-1) 请问哪些异常可能是缺页导致的？

RISC-V中的异常种类如上表所示。其中，有可能由于缺页产生的异常类型是：

- 12，13，15三种类型的pagefault

#### (2-1-2)发生缺页时，描述相关的重要寄存器的值（lab2中描述过的可以简单点）

| 寄存器 | 值   | 功能 |
| ------ | ---- | ---- |
| scause |      |      |
|        |      |      |
|        |      |      |

#### 

> 缺页有两个常见的原因，其一是 Lazy 策略，也就是直到内存页面被访问才实际进行页表操作。比如，一个程序被执行时，进程的代码段理论上需要从磁盘加载到内存。但是 os 并不会马上这样做，而是会保存 .text 段在磁盘的位置信息，在这些代码第一次被执行时才完成从磁盘的加载操作。

#### (2-2)这样做有哪些好处？

这样做可以节省开销。例如一个极端情况是，一个程序写了长达几个G的代码，但是在main函数却里面直接return 0，如果把整个函数都一次性加载进内存中，开销太大了。

> 此外 COW(Copy On Write) 也是常见的容易导致缺页的 Lazy 策略，这个之后再说。其实，我们的 mmap 也可以采取 Lazy 策略，比如：一个用户进程先后申请了 10G 的内存空间，然后用了其中 1M 就直接退出了。按照现在的做法，我们显然亏大了，进行了很多没有意义的页表操作。

#### (2-3-1)请问处理 10G 连续的内存页面，需要操作的页表实际大致占用多少内存(给出数量级即可)？

按照实验所用的页表进行估计，每一页有4096Byte，也即每一页是4KByte，10G的连续内存页面需要大约为2^21条页表项。每条页表项占用8Byte，那么总共占用约2^24Byte，约为

#### (2-3-2)请简单思考如何才能在现有框架基础上实现 Lazy 策略，缺页时又如何处理？描述合理即可，不需要考虑实现。



> 缺页的另一个常见原因是 swap 策略，也就是内存页面可能被换到磁盘上了，导致对应页面失效。

#### (2-4)此时页面失效如何表现在页表项(PTE)上？

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