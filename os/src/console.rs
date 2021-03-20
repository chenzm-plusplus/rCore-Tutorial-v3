use core::fmt::{self, Write};
use crate::sbi::console_putchar;

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
        $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
    }
}

#[macro_export]
macro_rules! fs_println{
    ($fmt: literal $(, $($arg: tt)+)?) => {
        // $crate::console::print(format_args!(concat!("\x1b[31m",$fmt, "\n","\x1b[0m") $(, $($arg)+)?));
        if let Some(key) = option_env!("LOG"){
            $crate::console::print(format_args!(concat!("\x1b[38m[easy-fs] ",$fmt,"\n\x1b[0m") $(, $($arg)+)?));
            // _ => {},
        }
    }
}
