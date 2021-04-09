.altmacro
.macro SAVE_SN n
    sd s\n, (\n+1)*8(sp)
.endm
.macro LOAD_SN n
    ld s\n, (\n+1)*8(sp)
.endm
    .section .text
    .globl __switch
__switch:
    # __switch(
    #     current_task_cx_ptr2: &*const TaskContext,
    #     next_task_cx_ptr2: &*const TaskContext
    # )
    # a0作为第一个函数参数，保存的是函数返回地址的地址
    # push TaskContext to current sp and save its address to where a0 points to
    addi sp, sp, -13*8
    sd sp, 0(a0) #将地址a0存储的东西(task_cx_ptr)拿出来赋值给sp
    # fill TaskContext with ra & s0-s11
    sd ra, 0(sp) #地址为a0的地方，现在也是地址为sp的地方，存储的是TaskContext的开始地址，
    # 同时也是TaskContext中的ra，所以把地址为a0的地方存储的地址拿出来交给ra
    .set n, 0
    .rept 12
        SAVE_SN %n
        .set n, n + 1
    .endr
    # ready for loading TaskContext a1 points to
    ld sp, 0(a1)
    # load registers in the TaskContext
    ld ra, 0(sp)
    .set n, 0
    .rept 12
        LOAD_SN %n
        .set n, n + 1
    .endr
    # pop TaskContext
    addi sp, sp, 13*8
    ret

