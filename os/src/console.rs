use crate::sbi::console_putchar;
use core::fmt::{self, Write};

// use lazy_static::lazy_static;
use core::option_env;

struct Stdout;

impl Write for Stdout {
    // fn write_str(&mut self, s: &str) -> fmt::Result {
    //     for c in s.chars() {
    //         console_putchar(c as usize);
    //     }
    //     Ok(())
    // }
    /// 打印一个字符串
    ///
    /// [`console_putchar`] sbi 调用每次接受一个 `usize`，但实际上会把它作为 `u8` 来打印字符。
    /// 因此，如果字符串中存在非 ASCII 字符，需要在 utf-8 编码下，对于每一个 `u8` 调用一次 [`console_putchar`]
    fn write_str(&mut self, s: &str) -> fmt::Result {
        let mut buffer = [0u8; 4];
        for c in s.chars() {
            for code_point in c.encode_utf8(&mut buffer).as_bytes().iter() {
                console_putchar(*code_point as usize);
            }
        }
        Ok(())
    }
}

// /// Add escape sequence to print with color in Linux console
// macro_rules! with_color {
//     ($fmt: literal, $color_code: ident) => {
//         concat!("\x1b[",$color_code,"m",$fmt, "\x1b[0m")
//     };
// }
//================basics function===================

pub fn print(args: fmt::Arguments) {
    Stdout.write_fmt(args).unwrap();
}

#[macro_export]
macro_rules! print {
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::console::print(format_args!($fmt $(, $($arg)+)?));
    }
}

#[macro_export]
macro_rules! println {
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
    }
}

#[macro_export]
macro_rules! fs_println{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        // $crate::console::print(format_args!(concat!("\x1b[31m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
        if let Some(key) = option_env!("LOG"){
            $crate::console::print(format_args!(concat!("\x1b[38m[easy-fs] ",$fmt,"\n\x1b[0m") $(, $($arg)+)?));
        }
    }
}

#[allow(unused)]
pub fn my_log(){
    let key: Option<&'static str> = option_env!("LOG");
    println!("In test.....");
    println!("the secret key might be: {:?}", key);
}

//================more function===================
#[macro_export]
macro_rules! kernel_println{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        // $crate::console::print(format_args!(concat!("\x1b[31m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
        if let Some(_key) = option_env!("LOG"){
            $crate::console::print(format_args!(concat!("\x1b[35m[kernel] ",$fmt,"\n\x1b[0m") $(, $($arg)+)?));
            // _ => {},
        }
    }
}

#[macro_export]
macro_rules! error{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        // $crate::console::print(format_args!(concat!("\x1b[31m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
        match option_env!("LOG"){
            Some("TRACE")|Some("trace") => $crate::console::print(format_args!(concat!("\x1b[31m[ERROR]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("DEBUG")|Some("debug") => $crate::console::print(format_args!(concat!("\x1b[31m[ERROR]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("INFO")|Some("info") => $crate::console::print(format_args!(concat!("\x1b[31m[ERROR]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("WARN")|Some("warn") => $crate::console::print(format_args!(concat!("\x1b[31m[ERROR]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("ERROR")|Some("error") => $crate::console::print(format_args!(concat!("\x1b[31m[ERROR]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            // None => $crate::console::print(format_args!(concat!("\x1b[31m[ERROR]",$fmt,"\n","\x1b[0m") $(, $($arg)+)?)),
            _ => {},
        }
    }
}

#[macro_export]
macro_rules! warn{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        //$crate::console::print(format_args!(concat!("\x1b[93m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
        match option_env!("LOG"){
            Some("INFO")|Some("info") => $crate::console::print(format_args!(concat!("\x1b[93m[WARN]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("WARN")|Some("warn") => $crate::console::print(format_args!(concat!("\x1b[93m[WARN]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("DEBUG")|Some("debug") => $crate::console::print(format_args!(concat!("\x1b[93m[WARN]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("TRACE")|Some("trace") => $crate::console::print(format_args!(concat!("\x1b[93m[WARN]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            // None => $crate::console::print(format_args!(concat!("\x1b[93m[WARN]",$fmt,"\n","\x1b[0m") $(, $($arg)+)?)),
            _ => {},
        }
    }
}

#[macro_export]
macro_rules! info{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        //如果LOG等级>=INFO执行以下这一句
        // let key: Option<&'static str> = option_env!("LOG");
        // $crate::console::print(format_args!(concat!("\x1b[34m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
        //否则什么也不做
        match option_env!("LOG"){
            Some("TRACE")|Some("trace")|Some("Trace") => $crate::console::print(format_args!(concat!("\x1b[34m[INFO]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("DEBUG")|Some("debug")|Some("Debug") => $crate::console::print(format_args!(concat!("\x1b[34m[INFO]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("INFO")|Some("info")|Some("Info") => $crate::console::print(format_args!(concat!("\x1b[34m[INFO]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            // None => $crate::console::print(format_args!(concat!("\x1b[34m[INFO]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            _ => {},
        }
    }
}

#[macro_export]
macro_rules! debug{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        //$crate::console::print(format_args!(concat!("\x1b[32m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
        match option_env!("LOG"){
            Some("DEBUG")|Some("debug") => $crate::console::print(format_args!(concat!("\x1b[32m[DEBUG]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("TRACE")|Some("trace") => $crate::console::print(format_args!(concat!("\x1b[32m[DEBUG]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            _ => {},
        }
    }
}

#[macro_export]
macro_rules! trace{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        // $crate::console::print(format_args!(concat!("\x1b[90m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
        match option_env!("LOG"){
            Some("TRACE")|Some("trace") => $crate::console::print(format_args!(concat!("\x1b[90m[TRACE]",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            _ => {},
        }
    }
}
