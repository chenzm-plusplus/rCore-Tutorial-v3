mod pipe;
mod stdio;
mod inode;
mod mail;

use crate::mm::UserBuffer;

pub trait File : Send + Sync {
    fn readable(&self) -> bool;
    fn writable(&self) -> bool;
    fn read(&self, buf: UserBuffer) -> usize;
    fn write(&self, buf: UserBuffer) -> usize;
}

pub use pipe::{Pipe, make_pipe};
pub use stdio::{Stdin, Stdout};
pub use inode::{
    OSInode, open_file, OpenFlags, list_apps,
    get_inode_id,
    get_file_data,
};
pub use mail::{Mail,MailBox,MPipe,make_mpipe};
