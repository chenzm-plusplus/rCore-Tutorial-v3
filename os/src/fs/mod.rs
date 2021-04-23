mod pipe;
mod stdio;
mod inode;
mod mail;

use crate::mm::UserBuffer;

pub trait File : Send + Sync {
    fn readable(&self) -> bool;
    fn writable(&self) -> bool;
    fn inode_id(&self) -> Option<u32>;
    fn read(&self, buf: UserBuffer) -> usize;
    fn write(&self, buf: UserBuffer) -> usize;
}

pub use pipe::{Pipe, make_pipe};
pub use stdio::{Stdin, Stdout};
pub use inode::{
    OSInode, open_file, OpenFlags, list_apps,
    get_inode_id,
    create_linker,delete_linker,count_files,
    count_files_from_id,
};
pub use mail::{Mail,MailBox,MPipe,make_mpipe};
