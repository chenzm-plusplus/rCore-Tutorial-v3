# RustOS-lab1

陈张萌 2017013678 计74

[TOC]

## 一、本次实验增加了什么

1. 模仿println!实现了error!、warn!等5个宏
2. 支持命令行参数LOG=xxx，可以在运行时指定输出等级

## 二、实验截图

` make run LOG=info`

![](./lab1/info.png)

`make run LOG=trace`

![](./lab1/trace.png)

## 三、回答问题

### 为了方便 os 处理，Ｍ态软件会将 S 态异常/中断委托给 S 态软件，请指出有哪些寄存器记录了委托信息，rustsbi 委托了哪些异常/中断？（也可以直接给出寄存器的值）

把中断全部委托给了S层。mideleg和medeleg分别记录了中断和异常委托的信息。设置完中断异常委托后，两个寄存器的信息如下：

| register | value  |
| -------- | ------ |
| medeleg  | 0xb1ab |
| mideleg  | 0x222  |

### 请学习 gdb 调试工具的使用(这对后续调试很重要)，并通过 gdb 简单跟踪从机器加电到跳转到 0x80200000 的简单过程。只需要描述重要的跳转即可，只需要描述在 qemu 上的情况。

#### 上电检查

上电之后从0x0000开始的位置都是unimp，第一条指令位于0x1000。

0x1000执行几条指令后跳转到0x80000000，也就是进入了rustsbi，代码如下。

```assembly
0x1000:      auipc   t0,0x0
                                               │   0x1004:      addi    a1,t0,32
                                               │   0x1008:      csrr    a0,mhartid
                                               │   0x100c:      ld      t0,24(t0)
                                               │   0x1010:      jr      t0
```

#### 进入rustsbi

进入rustsbi后，

- 先会跳转到start函数，执行和hart_id有关的初始化操作，然后会进入main函数，继续执行关于hart的初始化
- main函数所做的主要工作是为从M态进入S态做准备，类似从S态trap进了M态之后要返回S态。
- 调用_start_trap等函数对中断异常处理进行初始化，设置中断处理函数的入口地址，设置中断模式为直接中断模式。
- 接下来对rustsbi进行初始化，再将M态中断和异常都委托给S层。
- 输出rustsbi的欢迎信息。
- 最后，修改mepc到OS的起始地址 `0x80200000`，修改MPP，再通过系统调用就进入了S态，跳转到OS的起始地址开始运行操作系统。

#### 运行OS

使用下面的指令可以对os.bin进行反汇编，发现os的地址确实是从0x80200000开始的。

`rust-objdump -S -d target/riscv64gc-unknown-none-elf/release/os > target/riscv64gc-unknown-none-elf/release/os.s  -x --arch-name=riscv64 `

## 四、你对本次实验设计及难度/工作量的看法，以及有哪些需要改进的地方

作为熟悉代码框架和熟悉Rust语言的第一个实验我觉得难度比较合适。

代码内容建议再改进一下，因为这次实验的内容即使完全不看指导书的任何内容，就对着println!宏魔改也能改出来，而且代码量仿佛不存在一样的小。

真正的工作量在理解代码框架和rustsbi，简而言之就是希望可以有和代码框架关系更大一些的实验内容。

