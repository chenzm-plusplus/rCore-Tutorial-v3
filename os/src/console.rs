use crate::sbi::console_putchar;
use core::fmt::{self, Write};

use lazy_static::lazy_static;
use log::{self, Level, LevelFilter, Log, Metadata, Record};

struct Stdout;

impl Write for Stdout {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        for c in s.chars() {
            console_putchar(c as usize);
        }
        Ok(())
    }
}



// pub fn test() -> String{
//     "hello world"
// }

// pub fn with_color(args: fmt::Arguments, color_code: u8) -> String{
//     concat!("\x1b[",$color_code as u8,"m",$args, "\x1b[0m")
// }

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
// pub fn print_in_color(args: fmt::Arguments, color_code: u8){
//     Stdout.write_fmt(with_color!(args,color_code)).unwrap();
// }

// #[macro_export]
// macro_rules! with_color {
//     ($fmt: literal, $color_code: ident) => {{
//         // format_args!("\x1b[{}m{}\x1b[0m", $color_code as u8, $args)
//         concat!("\x1b[",$color_code as u8,"m",$fmt, "\x1b[0m")
//     }};
// }

// pub fn print_in_color(args: fmt::Arguments, color_code: u8) {
//     Stdout.write_fmt(with_color!(args, color_code)).unwrap();
// }

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

// #[macro_export]
// macro_rules! println_in_color {
//     ($fmt: literal $(, $($arg: tt)+)?) => {
//         let color_code = $crate::console::level_to_color_code(Level::Info);
//         $crate::console::print(format_args!(concat!(with_color!($fmt,color_code), "\n") $(, $($arg)+)?));
//     }
// }

pub fn test(){
    println!(open_env!("LOG"));
}

// #[macro_export]
// macro_rules! info{
//     ($fmt: literal $(, $($arg: tt)+)?) => {
//         println_in_color!($fmt $(, $($arg)+)?);
//         //$crate::console::print_in_color(format_args!($fmt $(, $($arg)+)?),crate::console::level_to_color_code(log::Level::Info));
//     }
// }

//================more function===================

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

//================type convert===================

pub fn level_to_color_code(level: Level) -> u8 {
    match level {
        Level::Error => 31, // Red
        Level::Warn => 93,  // BrightYellow
        Level::Info => 34,  // Blue
        Level::Debug => 32, // Green
        Level::Trace => 90, // BrightBlack
    }
}