use crate::sbi::console_putchar;
use core::fmt::{self, Write};

use lazy_static::lazy_static;
use log::{self, Level, LevelFilter, Log, Metadata, Record};
use core::option_env;

struct Stdout;

impl Write for Stdout {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        for c in s.chars() {
            console_putchar(c as usize);
        }
        Ok(())
    }
}

// /// Add escape sequence to print with color in Linux console
macro_rules! with_color {
    ($fmt: literal, $color_code: ident) => {
        //format_args!("\u{1B}[{}m{}\u{1B}[0m", $color_code as u8, $args)
        concat!("\x1b[",$color_code,"m",$fmt, "\x1b[0m")
        // format_args!("\x1b[{}m{}\x1b[0m", $color_code as u8, $fmt)
    };
}
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

pub fn my_log(){
    let key: Option<&'static str> = option_env!("LOG");
    println!("In test.....");
    println!("the secret key might be: {:?}", key);
}
//================more function===================

#[macro_export]
macro_rules! error{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        // $crate::console::print(format_args!(concat!("\x1b[31m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
        match option_env!("LOG"){
            Some("TRACE")|Some("trace") => $crate::console::print(format_args!(concat!("\x1b[31m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("DEBUG")|Some("debug") => $crate::console::print(format_args!(concat!("\x1b[31m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("INFO")|Some("info") => $crate::console::print(format_args!(concat!("\x1b[31m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("WARN")|Some("warn") => $crate::console::print(format_args!(concat!("\x1b[31m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("ERROR")|Some("error") => $crate::console::print(format_args!(concat!("\x1b[31m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            None => $crate::console::print(format_args!(concat!("\x1b[31m",$fmt,"\n","\x1b[0m") $(, $($arg)+)?)),
            _ => {},
        }
    }
}

#[macro_export]
macro_rules! warn{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        //$crate::console::print(format_args!(concat!("\x1b[93m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
        match option_env!("LOG"){
            Some("INFO")|Some("info") => $crate::console::print(format_args!(concat!("\x1b[93m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("WARN")|Some("warn") => $crate::console::print(format_args!(concat!("\x1b[93m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("DEBUG")|Some("debug") => $crate::console::print(format_args!(concat!("\x1b[93m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("TRACE")|Some("trace") => $crate::console::print(format_args!(concat!("\x1b[93m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            None => $crate::console::print(format_args!(concat!("\x1b[93m",$fmt,"\n","\x1b[0m") $(, $($arg)+)?)),
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
            Some("TRACE")|Some("trace")|Some("Trace") => $crate::console::print(format_args!(concat!("\x1b[34m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("DEBUG")|Some("debug")|Some("Debug") => $crate::console::print(format_args!(concat!("\x1b[34m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("INFO")|Some("info")|Some("Debug") => $crate::console::print(format_args!(concat!("\x1b[34m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            None => $crate::console::print(format_args!(concat!("\x1b[34m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            _ => {},
        }
    }
}

#[macro_export]
macro_rules! debug{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        //$crate::console::print(format_args!(concat!("\x1b[32m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
        match option_env!("LOG"){
            Some("DEBUG")|Some("debug") => $crate::console::print(format_args!(concat!("\x1b[32m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            Some("TRACE")|Some("trace") => $crate::console::print(format_args!(concat!("\x1b[32m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            _ => {},
        }
    }
}

#[macro_export]
macro_rules! trace{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        // $crate::console::print(format_args!(concat!("\x1b[90m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
        match option_env!("LOG"){
            Some("TRACE")|Some("trace") => $crate::console::print(format_args!(concat!("\x1b[90m",$fmt,"\n\x1b[0m") $(, $($arg)+)?)),
            _ => {},
        }
    }
}