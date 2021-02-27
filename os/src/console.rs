use crate::sbi::console_putchar;
use core::fmt::{self, Write};

struct Stdout;

impl Write for Stdout {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        for c in s.chars() {
            console_putchar(c as usize);
        }
        Ok(())
    }
}

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
        $crate::console::print(format_args!(concat!($fmt, "\n","\x1b[0m") $(, $($arg)+)?));
    }
}

// info!(".text [{:#x}, {:#x})", stext as usize, etext as usize);
//     debug!(".rodata [{:#x}, {:#x})", srodata as usize, erodata as usize);
//     error!(".data [{:#x}, {:#x})", sdata as usize, edata as usize);

#[macro_export]
macro_rules! info{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::console::print(format_args!(concat!("\x1b[34m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
    }
}

#[macro_export]
macro_rules! debug{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::console::print(format_args!(concat!("\x1b[32m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
    }
}

#[macro_export]
macro_rules! error{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::console::print(format_args!(concat!("\x1b[31m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
    }
}

#[macro_export]
macro_rules! warn{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::console::print(format_args!(concat!("\x1b[93m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
    }
}

#[macro_export]
macro_rules! trace{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::console::print(format_args!(concat!("\x1b[90m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
    }
}