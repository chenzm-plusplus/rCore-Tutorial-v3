use std::io::{Result, Write};
use std::fs::{File, read_dir};

fn main() {
    println!("cargo:rerun-if-changed=../user/src/");
    println!("cargo:rerun-if-changed={}", TARGET_PATH);
    insert_app_data().unwrap();
}
//本文件目录：my_rust_projects/rCore-tutorial-v3/os/build.rs
//我本人把测试用例仓库放在：
// my_rust_projects/rCore_turorial_tests/
//请根据自己的实际情况进行修改

static TARGET_PATH: &str = "../user/build/bin/";
// static TARGET_PATH: &str = "../user/target/riscv64gc-unknown-none-elf/release/";
// static TARGET_PATH: &str = "../../rCore_tutorial_tests/user/build/elf/";
// static TARGET_PATH: &str = "../../rCore_tutorial_tests/user/target/riscv64gc-unknown-none-elf/release/";
//这个路径代表的含义是：我要执行的二进制文件（.bin/.elf/无后缀）放在哪个文件夹下面？
//这个文件夹下面放了非常多的二进制文件也没有关系，下面的函数会告诉我们实际上只挑选其中的几个函数执行

fn insert_app_data() -> Result<()> {
    let mut f = File::create("src/link_app.S").unwrap();
    let mut apps: Vec<_> = read_dir("../user/src/bin")//这个路径的意思是：我这次要测试哪些用户程序运行的结果？
    //把这些程序的rs文件放在这个文件夹下面
    // let mut apps: Vec<_> = read_dir("../../rCore_tutorial_tests/user/build/elf/")
        .unwrap()
        .into_iter()
        .map(|dir_entry| {
            let mut name_with_ext = dir_entry.unwrap().file_name().into_string().unwrap();
            name_with_ext.drain(name_with_ext.find('.').unwrap()..name_with_ext.len());
            name_with_ext
        })
        .collect();
    apps.retain(|x| x != "");
    //有时候apps数组会把一个空字符串当成文件名存进来，这会导致运行时报错“找不到文件”。
    //因此这里增加一句判断，把空数组去掉
    apps.sort();
    

    writeln!(f, r#"
    .align 3
    .section .data
    .global _num_app
_num_app:
    .quad {}"#, apps.len())?;

    for i in 0..apps.len() {
        writeln!(f, r#"    .quad app_{}_start"#, i)?;
    }
    writeln!(f, r#"    .quad app_{}_end"#, apps.len() - 1)?;

    writeln!(f, r#"
    .global _app_names
_app_names:"#)?;
    for app in apps.iter() {
        writeln!(f, r#"    .string "{}""#, app)?;
    }

    for (idx, app) in apps.iter().enumerate() {
        println!("app_{}: {}", idx, app);
        writeln!(f, r#"
    .section .data
    .global app_{0}_start
    .global app_{0}_end
    .align 3
app_{0}_start:
    .incbin "{2}{1}"
app_{0}_end:"#, idx, app, TARGET_PATH)?;
    }
    Ok(())
}