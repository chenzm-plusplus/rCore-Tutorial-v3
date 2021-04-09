
use super::{
    BlockDevice,
    DiskInode,
    DiskInodeType,
    DirEntry,
    EasyFileSystem,
    DIRENT_SZ,
    get_block_cache,
};
use alloc::sync::Arc;
use alloc::string::String;
use alloc::vec::Vec;
use spin::{Mutex, MutexGuard};
// use super::lib::*;

//注意，这个数据结构是放在内存里面的
//某种意义上说可以随便修改······
pub struct Inode {
    //新增.我就很想知道为什么这个结构里面不直接存一个inode-id好了？？？
    //为什么每次都要这么麻烦···因为访问硬盘很慢很慢！！！的啊！！！！
    my_inode_id: u32,//还是非常需要的
    block_id: usize,//表明这个inode存储在磁盘的哪个块上s
    block_offset: usize,
    fs: Arc<Mutex<EasyFileSystem>>,
    block_device: Arc<dyn BlockDevice>,
}

impl Inode {
    //==============================================
    pub fn new(
        inode_id: u32,
        fs: Arc<Mutex<EasyFileSystem>>,
        block_device: Arc<dyn BlockDevice>,
    ) -> Self {
        let (block_id, block_offset) = fs.lock().get_disk_inode_pos(inode_id);
        Self {
            my_inode_id: inode_id,//new
            block_id: block_id as usize,
            block_offset,
            fs,
            block_device,
        }
    }

    fn read_disk_inode<V>(&self, f: impl FnOnce(&DiskInode) -> V) -> V {
        get_block_cache(
            self.block_id,
            Arc::clone(&self.block_device)
        ).lock().read(self.block_offset, f)
    }

    fn modify_disk_inode<V>(&self, f: impl FnOnce(&mut DiskInode) -> V) -> V {
        get_block_cache(
            self.block_id,
            Arc::clone(&self.block_device)
        ).lock().modify(self.block_offset, f)
    }

    /*
    fn get_disk_inode(&self, fs: &mut MutexGuard<EasyFileSystem>) -> Dirty<DiskInode> {
        fs.get_disk_inode(self.inode_id)
    }
    */

    //这个返回的大概就是stat想要的inode编号吧
    //这个函数调用的时候就disk_inode使用根目录就可以了
    //给定一个DiskInode，也就是一个文件，而且要假设它是一个目录
    //遍历这个目录下面的所有文件
    //如果发现那个文件和自己想要找的文件名一样
    //那么就返回那个文件的inode_id
    //看起来这就是需要返回的ino了
    //已经完全搞懂这是在做什么了，就是把一个文件夹下面的文件都遍历一遍
    //有了inode-id，就可以从超级块里面访问文件了
    fn find_inode_id(
        &self,
        name: &str,
        disk_inode: &DiskInode,
    ) -> Option<u32> {
        // assert it is a directory
        fs_println!("find_inode_id::disk_node is dir...{}",disk_inode.is_dir());
        assert!(disk_inode.is_dir());
        let file_count = (disk_inode.size as usize) / DIRENT_SZ;
        let mut dirent = DirEntry::empty();
        for i in 0..file_count {
            assert_eq!(
                disk_inode.read_at(
                    DIRENT_SZ * i,
                    dirent.as_bytes_mut(),
                    &self.block_device,
                ),
                DIRENT_SZ,
            );
            fs_println!("find_inode_id::dirent name is {}, inode number is {}",dirent.name(),dirent.inode_number());
            if dirent.name() == name {
                return Some(dirent.inode_number() as u32);
            }
        }
        None
    }

    //也限制只有根目录可以调用好了
    pub fn get_inode_id(&self, name: &str) -> Option<u32>{
        let _ = self.fs.lock();
        self.read_disk_inode(|disk_inode| {
            self.find_inode_id(name, disk_inode)
        })
    }

    pub fn get_my_inode_id(&self) ->Option<u32>{
        return Some(self.my_inode_id)
    }

    //已知有一个inode类型
    //希望知道我代表的文件的inode是多少号
    pub fn get_my_data(&self) ->Option<u32>{
        let _ = self.fs.lock();
        self.read_disk_inode(|disk_inode| {
            fs_println!("Inode::get_my_data::disk_node is dir...{}",disk_inode.is_dir());
            let file_count = (disk_inode.size as usize) / DIRENT_SZ;
            let mut dirent = DirEntry::empty();
            for i in 0..file_count {
                assert_eq!(
                    disk_inode.read_at(
                        DIRENT_SZ * i,
                        dirent.as_bytes_mut(),
                        &self.block_device,
                    ),
                    DIRENT_SZ,
                );
                //TODO这里要修改输出，能够返回文件名鸭
                // fs_println!("get_my_data::dirent name is {}, inode number is {}",dirent.name(),dirent.inode_number());
                if dirent.inode_number() == self.my_inode_id {
                    // return Some((dirent.inode_number() as u32, dirent.name()));
                    fs_println!("get_my_data::dirent name is {}, inode number is {},but return None",dirent.name(),dirent.inode_number());
                    return None;
                }
            }
            return None;
        })
    }

    //刚刚意识到哪里有问题！其实存inode编号就可以了？
    pub fn find(&self, name: &str) -> Option<Arc<Inode>> {
        let _ = self.fs.lock();
        self.read_disk_inode(|disk_inode| {
            self.find_inode_id(name, disk_inode)
            .map(|inode_id| {
                Arc::new(Self::new(
                    inode_id,
                    self.fs.clone(),
                    self.block_device.clone(),
                ))
            })
        })
    }

    fn increase_size(
        &self,
        new_size: u32,
        disk_inode: &mut DiskInode,
        fs: &mut MutexGuard<EasyFileSystem>,
    ) {
        if new_size < disk_inode.size {
            return;
        }
        let blocks_needed = disk_inode.blocks_num_needed(new_size);
        let mut v: Vec<u32> = Vec::new();
        for _ in 0..blocks_needed {
            v.push(fs.alloc_data());
        }
        disk_inode.increase_size(new_size, v, &self.block_device);
    }

    pub fn create(&self, name: &str) -> Option<Arc<Inode>> {
        let mut fs = self.fs.lock();
        if self.modify_disk_inode(|root_inode| {
            // assert it is a directory
            assert!(root_inode.is_dir());
            // has the file been created?
            self.find_inode_id(name, root_inode)
        }).is_some() {
            return None;
        }
        // create a new file
        // alloc a inode with an indirect block
        let new_inode_id = fs.alloc_inode();
        // initialize inode
        let (new_inode_block_id, new_inode_block_offset) 
            = fs.get_disk_inode_pos(new_inode_id);
        get_block_cache(
            new_inode_block_id as usize,
            Arc::clone(&self.block_device)
        ).lock().modify(new_inode_block_offset, |new_inode: &mut DiskInode| {
            new_inode.initialize(DiskInodeType::File);
        });
        self.modify_disk_inode(|root_inode| {
            // append file in the dirent
            let file_count = (root_inode.size as usize) / DIRENT_SZ;
            let new_size = (file_count + 1) * DIRENT_SZ;
            // increase size
            self.increase_size(new_size as u32, root_inode, &mut fs);
            // write dirent
            let dirent = DirEntry::new(name, new_inode_id);
            root_inode.write_at(
                file_count * DIRENT_SZ,
                dirent.as_bytes(),
                &self.block_device,
            );
        });
        // release efs lock manually because we will acquire it again in Inode::new
        drop(fs);
        // return inode
        Some(Arc::new(Self::new(
            new_inode_id,
            self.fs.clone(),
            self.block_device.clone(),
        )))
    }

    //这个函数只允许ROOT调用
    //一旦建立了linker，根目录下面的两个DirEntry的地位就是差不多的
    pub fn create_linker(&self, name: &str, old_name: &str) -> Option<Arc<Inode>> {
        let mut fs = self.fs.lock();

        //先检查原来的文件是否存在
        if self.modify_disk_inode(|root_inode| {
            // assert it is a directory
            assert!(root_inode.is_dir());
            // has the file been created?
            self.find_inode_id(old_name, root_inode)
        }).is_none() {
            return None;
        }

        //就不用新建inode了
        //先获取旧的文件名和inode-id
        //再新建目录项就可以了
        let mut inode_id = 0;
        //新建一个目录项
        self.modify_disk_inode(|root_inode| {
            // append file in the dirent
            let file_count = (root_inode.size as usize) / DIRENT_SZ;
            let new_size = (file_count + 1) * DIRENT_SZ;
            // increase size
            self.increase_size(new_size as u32, root_inode, &mut fs);
            // write dirent
            let inode_id = self.find_inode_id(old_name, root_inode).unwrap();//因为前面已经检查过合法性了
            //所以这个inode-id一定是合法的
            let dirent = DirEntry::new(name, inode_id);
            root_inode.write_at(
                file_count * DIRENT_SZ,
                dirent.as_bytes(),
                &self.block_device,
            );
        });
        // release efs lock manually because we will acquire it again in Inode::new
        drop(fs);
        // return inode
        Some(Arc::new(Self::new(
            inode_id,
            self.fs.clone(),
            self.block_device.clone(),
        )))
    }

    //这个函数也只允许ROOT调用
    //这要怎么写······不如我改一下好了，比如说增加一个valid位？
    //todo:fix return type, Option<bool>
    pub fn delete_linker(&self, name: &str) -> bool{
        let fs = self.fs.lock();

        //先检查想要unlink的文件是否存在
        if self.modify_disk_inode(|root_inode| {
            // assert it is a directory
            assert!(root_inode.is_dir());
            // has the file been created?
            self.find_inode_id(name, root_inode)
        }).is_none() {
            return false;
        }

        //就是不用考虑只剩下这一个DirEntry到文件还有link的情况，直接删除即可
        //把那个Entry设置成不合法即可
        let mut result = false;
        //新建一个目录项
        self.modify_disk_inode(|root_inode| {
            // append file in the dirent
            let file_count = (root_inode.size as usize) / DIRENT_SZ;
            let mut dirent = DirEntry::empty();
            for i in 0..file_count {
                assert_eq!(
                    root_inode.read_at(
                        DIRENT_SZ * i,
                        dirent.as_bytes_mut(),
                        &self.block_device,
                    ),
                    DIRENT_SZ,
                );
                //TODO这里要修改输出，能够返回文件名鸭
                // fs_println!("get_my_data::dirent name is {}, inode number is {}",dirent.name(),dirent.inode_number());
                if dirent.name() == name {
                    fs_println!("get_my_data::dirent name is {}, inode number is {},but return None",
                        dirent.name(),dirent.inode_number());
                    //如果找到了，那么就把空的写进去
                    //就是用一个不合法的内容替换的意思
                    let mut dirent_unlink = DirEntry::empty();
                    assert_eq!(
                        root_inode.write_at(
                            i * DIRENT_SZ,
                            dirent_unlink.as_bytes(),
                            &self.block_device,
                        ),
                        DIRENT_SZ,
                    );
                    result = true;
                }
            }
        });
        // release efs lock manually because we will acquire it again in Inode::new
        drop(fs);
        // return nothing
        return result;
    }

    //只有根目录可以调用
    pub fn count_files(&self, name: &str) -> Option<usize>{
        let fs = self.fs.lock();

        //先检查想要计数的文件是否存在
        if self.modify_disk_inode(|root_inode| {
            // assert it is a directory
            assert!(root_inode.is_dir());
            // has the file been created?
            self.find_inode_id(name, root_inode)
        }).is_none() {
            return None;
        }

        //
        let mut counter = 0 as usize;

        //就是不用考虑只剩下这一个DirEntry到文件还有link的情况，直接删除即可
        //把那个Entry设置成不合法即可
        let mut inode_id = 0;
        //新建一个目录项
        self.modify_disk_inode(|root_inode| {
            // append file in the dirent
            let file_count = (root_inode.size as usize) / DIRENT_SZ;
            let mut dirent = DirEntry::empty();
            for i in 0..file_count {
                assert_eq!(
                    root_inode.read_at(
                        DIRENT_SZ * i,
                        dirent.as_bytes_mut(),
                        &self.block_device,
                    ),
                    DIRENT_SZ,
                );
                //得到了自己的inode-number
                if dirent.name() == name {
                    fs_println!("count_files::get_inode_id::dirent name is {}, inode number is {},but return None",
                        dirent.name(),dirent.inode_number());
                    //如果找到了，那么就把空的写进去
                    //就是用一个不合法的内容替换的意思
                    inode_id = dirent.inode_number();
                    break;
                }
            }

            //下面是计数的内容
            for i in 0..file_count {
                assert_eq!(
                    root_inode.read_at(
                        DIRENT_SZ * i,
                        dirent.as_bytes_mut(),
                        &self.block_device,
                    ),
                    DIRENT_SZ,
                );
                //得到了自己的inode-number
                if dirent.inode_number() == inode_id {
                    fs_println!("count_files::counting::dirent name is {}, inode number is {},but return None",
                        dirent.name(),dirent.inode_number());
                    //如果找到了，那么就把空的写进去
                    //就是用一个不合法的内容替换的意思
                    counter = counter + 1;
                }
            }
        });
        // release efs lock manually because we will acquire it again in Inode::new
        drop(fs);
        // return nothing
        return Some(counter);
    }

    //只有根目录可以调用
    pub fn count_files_from_me(&self) -> Option<usize>{
        let fs = self.fs.lock();

        let mut counter = 0 as usize;
        //新建一个目录项
        self.modify_disk_inode(|root_inode| {
            // append file in the dirent
            let file_count = (root_inode.size as usize) / DIRENT_SZ;
            let mut dirent = DirEntry::empty();
            //下面是计数的内容
            for i in 0..file_count {
                assert_eq!(
                    root_inode.read_at(
                        DIRENT_SZ * i,
                        dirent.as_bytes_mut(),
                        &self.block_device,
                    ),
                    DIRENT_SZ,
                );
                //得到了自己的inode-number
                if dirent.inode_number() == self.my_inode_id {
                    fs_println!("count_files::counting::dirent name is {}, inode number is {},",
                        dirent.name(),dirent.inode_number());
                    //如果找到了，那么就把空的写进去
                    //就是用一个不合法的内容替换的意思
                    counter = counter + 1;
                }
            }
        });
        // release efs lock manually because we will acquire it again in Inode::new
        drop(fs);
        // return nothing
        return Some(counter);
    }

    //只有根目录可以调用
    pub fn count_files_from_id(&self,id:u32) -> Option<usize>{
        let fs = self.fs.lock();

        let mut counter = 0 as usize;
        //新建一个目录项
        self.modify_disk_inode(|root_inode| {
            // append file in the dirent
            let file_count = (root_inode.size as usize) / DIRENT_SZ;
            let mut dirent = DirEntry::empty();
            //下面是计数的内容
            for i in 0..file_count {
                assert_eq!(
                    root_inode.read_at(
                        DIRENT_SZ * i,
                        dirent.as_bytes_mut(),
                        &self.block_device,
                    ),
                    DIRENT_SZ,
                );
                //得到了自己的inode-number
                if dirent.inode_number() == id {
                    fs_println!("count_files::counting::dirent name is {}, inode number is {},",
                        dirent.name(),dirent.inode_number());
                    //如果找到了，那么就把空的写进去
                    //就是用一个不合法的内容替换的意思
                    counter = counter + 1;
                }
            }
        });
        // release efs lock manually because we will acquire it again in Inode::new
        drop(fs);
        // return nothing
        return Some(counter);
    }


    pub fn ls(&self) -> Vec<String> {
        let _ = self.fs.lock();
        self.read_disk_inode(|disk_inode| {
            let file_count = (disk_inode.size as usize) / DIRENT_SZ;
            let mut v: Vec<String> = Vec::new();
            for i in 0..file_count {
                let mut dirent = DirEntry::empty();
                assert_eq!(
                    disk_inode.read_at(
                        i * DIRENT_SZ,
                        dirent.as_bytes_mut(),
                        &self.block_device,
                    ),
                    DIRENT_SZ,
                );
                v.push(String::from(dirent.name()));
            }
            v
        })
    }

    pub fn read_at(&self, offset: usize, buf: &mut [u8]) -> usize {
        let _ = self.fs.lock();
        self.read_disk_inode(|disk_inode| {
            disk_inode.read_at(offset, buf, &self.block_device)
        })
    }

    pub fn write_at(&self, offset: usize, buf: &[u8]) -> usize {
        let mut fs = self.fs.lock();
        self.modify_disk_inode(|disk_inode| {
            self.increase_size((offset + buf.len()) as u32, disk_inode, &mut fs);
            disk_inode.write_at(offset, buf, &self.block_device)
        })
    }

    pub fn clear(&self) {
        let mut fs = self.fs.lock();
        self.modify_disk_inode(|disk_inode| {
            let size = disk_inode.size;
            let data_blocks_dealloc = disk_inode.clear_size(&self.block_device);
            assert!(data_blocks_dealloc.len() == DiskInode::total_blocks(size) as usize);
            for data_block in data_blocks_dealloc.into_iter() {
                fs.dealloc_data(data_block);
            }
        });
    }
}
