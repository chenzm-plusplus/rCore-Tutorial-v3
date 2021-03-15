use crate::task::{
    suspend_current_and_run_next,
    exit_current_and_run_next,
    current_task,
    current_user_token,
    add_task,

    TaskPriority,
    set_priority,
};
use crate::mm::{
    translated_str,
    translated_refmut,
};
use crate::loader::get_app_data_by_name;
use alloc::sync::Arc;

use crate::config::{
    ISIZI_MAX,
};


pub fn sys_exit(exit_code: i32) -> ! {
    println!("[kernel] Application exited with code {}", exit_code);
    exit_current_and_run_next(exit_code);
    panic!("Unreachable in sys_exit!");
}

pub fn sys_yield() -> isize {
    suspend_current_and_run_next();
    0
}

pub fn sys_getpid() -> isize {
    current_task().unwrap().pid.0 as isize
}

pub fn sys_fork() -> isize {
    let token = current_user_token();
    info!("sys_fork...current user toker is {:#x}",token);

    let current_task = current_task().unwrap();
    let new_task = current_task.fork();
    //出现一个新的task之后会自动分配一个pid的
    let new_pid = new_task.pid.0;
    info!("sys_fork...new pid is {}",new_pid);
    // modify trap context of new_task, because it returns immediately after switching
    let trap_cx = new_task.acquire_inner_lock().get_trap_cx();
    // we do not have to move to next instruction since we have done it before
    // for child process, fork returns 0
    trap_cx.x[10] = 0;
    // add new task to scheduler
    add_task(new_task);
    //soga，因为fork出来的会自动加入进程池里面
    //简单点说就是，放在Manager那个队列里面，等着被调用哦
    new_pid as isize
}

pub fn sys_exec(path: *const u8) -> isize {
    let token = current_user_token();
    info!("sys_exec...current user toker is {:#x}",token);
    let path = translated_str(token, path);//总之就是把*const u8翻译成String类型
    //如果能找到该名称的可执行程序那么就执行
    info!("sys_exec...{}",path.as_str());
    if let Some(data) = get_app_data_by_name(path.as_str()) {
        let task = current_task().unwrap();
        task.exec(data);//就是当前的task不执行了，只要执行data指定的task就可以了
        //那当前进程怎么办啊？
        0
    } else {
        -1
    }
}
//问题：为什么fork出这么多子进程，却只有一个exec？

// pub const TEMP_MAX: usize = 100;
//有一个想法就是，我创建了一个进程，并且是从用户程序里面加载出来的代码······
// !!!震惊！太神奇了，我都不知道我写了什么，竟然就几乎完成了系统调用啊！

pub fn sys_spawn2(path: *const u8) -> isize{
    //fork
    let current_task = current_task().unwrap();
    let new_task = current_task.fork();
    //出现一个新的task之后会自动分配一个pid的
    let new_pid = new_task.pid.0;
    info!("sys_spawn...new pid is {}",new_pid);
    // modify trap context of new_task, because it returns immediately after switching
    let trap_cx = new_task.acquire_inner_lock().get_trap_cx();
    // we do not have to move to next instruction since we have done it before
    // for child process, fork returns 0
    trap_cx.x[10] = 0;
    // add new task to scheduler
    add_task(new_task);

    //这里的token也就相当于是用来区分页表的东西。
    //在什么样的页表下可以找到path？
    //会议usershell的使用场景······只有在
    let token = current_user_token();
    info!("sys_spawn...current user toker is {:#x}",token);
    let path = translated_str(token, path); //总之就是把*const u8翻译成String类型
    //如果能找到该名称的可执行程序那么就执行
    info!("sys_spawn...{}",path.as_str());

    if let Some(data) = get_app_data_by_name(path.as_str()) {
        info!("sys_spawn...{}, is excuting....",path.as_str());
        // let task = current_task().unwrap();
        current_task.exec(data);//就是当前的task不执行了，只要执行data指定的task就可以了
        //那当前进程怎么办啊？
        new_pid as isize
    } else {
        -1 as isize
    }
    // new_pid as isize
}



// pub fn spawn(self: &Arc<TaskControlBlock>, elf_data: &[u8]) -> Arc<TaskControlBlock>
//spawn直接使用exec会出现什么问题？
pub fn sys_spawn(path: *const u8) -> isize{
    //换一种思路······spawn1的内部实现的效果是把指定的函数加载进去
    //然后再来一个函数spawn2来负责执行这个函数

    let token = current_user_token();
    let path = translated_str(token, path);//总之就是把*const u8翻译成String类型
    info!("sys_spawn...{}",path.as_str());
    if let Some(data) = get_app_data_by_name(path.as_str()) {
        let current_task = current_task().unwrap();
        let new_task = current_task.spawn_from(data);
        //出现一个新的task之后会自动分配一个pid的
        let new_pid = new_task.pid.0;
        info!("sys_spawn_from...new pid is {}",new_pid);
        // add new task to scheduler
        add_task(new_task);
        //soga，因为fork出来的会自动加入进程池里面
        //简单点说就是，放在Manager那个队列里面，等着被调用哦

        //接下来要做的事情就是不断地替换
        //现在能做到的事情是
        //生成这些个用户进程，并且放任它们跑
        new_pid as isize
    } else {
        -1
    }
}

/// If there is not a child process whose pid is same as given, return -1.
/// Else if there is a child process but it is still running, return -2.
pub fn sys_waitpid(pid: isize, exit_code_ptr: *mut i32) -> isize {
    let task = current_task().unwrap();
    // find a child process

    // ---- hold current PCB lock
    let mut inner = task.acquire_inner_lock();
    if inner.children
        .iter()
        .find(|p| {pid == -1 || pid as usize == p.getpid()})
        .is_none() {
        return -1;
        // ---- release current PCB lock
    }
    let pair = inner.children
        .iter()
        .enumerate()
        .find(|(_, p)| {
            // ++++ temporarily hold child PCB lock
            p.acquire_inner_lock().is_zombie() && (pid == -1 || pid as usize == p.getpid())
            // ++++ release child PCB lock
        });
    if let Some((idx, _)) = pair {
        let child = inner.children.remove(idx);
        // confirm that child will be deallocated after removing from children list
        assert_eq!(Arc::strong_count(&child), 1);
        let found_pid = child.getpid();
        // ++++ temporarily hold child lock
        let exit_code = child.acquire_inner_lock().exit_code;
        // ++++ release child PCB lock
        *translated_refmut(inner.memory_set.token(), exit_code_ptr) = exit_code;
        found_pid as isize
    } else {
        -2
    }
    // ---- release current PCB lock automatically
}

//sys_set_priority
pub fn sys_set_priority(prio: usize) -> isize{
    debug!("[kernel] sys_set_priority...{}",prio);
    if prio>=2 && prio<=ISIZI_MAX as usize {
        set_priority(TaskPriority::from(prio));
        return prio as isize
    }
    return -1 as isize
}

