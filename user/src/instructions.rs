
use super::bits::STATUS_FS;

/*
llvm_asm!(assembly template
   : output operands
   : input operands
   : clobbers
   : options
   );
*/
/*
.macro STORE reg, offset, regbytes, base
    sd  \reg, \offset*REGBYTES(a0)
.macro LOAD reg, offset, regbytes, base
    ld  \reg, \offset*REGBYTES(a0)
*/
/// atomic read

#[macro_export]
macro_rules! ld {
    ( $regname:expr, $offset:expr, $base:expr) => {
        format_args!("ld\t{}, {}({})",$regname,$offset,$base)
    };
}

#[macro_export]
macro_rules! sd {
    ( $regname:expr, $offset:expr, $base:expr) => {
        format_args!("sd\t{}, {}({})",$regname,$offset,$base)
    };
}

// #[macro_export]
// macro_rules! csrrw {
//     ( $regname:expr, $offset:expr, $base:expr) => {
//         format_args!("csrrw\t{}, {}, {}",$regname,$offset,$base)
//     };
// }

// #[macro_export]
// macro_rules! csrw {
//     ( $offset:expr, $regname:expr) => {
//         format_args!("csrrw\t{}, {}",$offset,$regname)
//     };
// }

#[macro_export]
macro_rules! la {
    ( $offset:expr, $regname:literal) => {
        format_args!("la\t{}, {}",$offset,$regname)
    };
}

#[macro_export]
macro_rules! load {
    ( $regname:expr, $offset:expr, $base:expr) => {{
        let value: u64;
        #[allow(unused_unsafe)]
        unsafe { llvm_asm!(
            "ld $0, $1($2)"
            :"=r"(value)
            :"i"($regname), "i"($offset), "i"($base)
            :
        ) };
        value
    }};
}

// /// atomic read from CSR
// #[macro_export]
// macro_rules! store {
//     ( $r:ident ) => {{
//         let value: u64;
//         #[allow(unused_unsafe)]
//         unsafe { llvm_asm!("sd $0, $1" : "=r"(value) : "i"(super::csr::$r)) };
//         value
//     }};
// }

/// atomic read from CSR
// #[macro_export]
// macro_rules! load {
//     ( $loadto:ident, $offset:expr, ) => {{
//         let value: u64;
//         #[allow(unused_unsafe)]
//         unsafe { llvm_asm!("ld $0, $1($2)" 
//         : "=r"(value) 
//         : "r"(super::csr::$loadto), "i"()) };
//         value
//     }};
// }

/// atomic read from CSR
#[macro_export]
macro_rules! csrr {
    ( $r:ident ) => {{
        let value: u64;
        #[allow(unused_unsafe)]
        unsafe { llvm_asm!("csrr $0, $1" : "=r"(value) : "i"(super::csr::$r)) };
        value
    }};
}

// / atomic write to CSR
#[macro_export]
macro_rules! csrw {
    ( $r:ident, $x:expr ) => {{
        let x: u64 = $x;
        llvm_asm!("csrw $0, $1" :: "i"(super::csr::$r), "r"(x) :: "volatile");
    }};
}

/// atomic write to CSR from immediate
#[macro_export]
macro_rules! csrwi {
    ( $r:ident, $x:expr ) => {{
        const X: u64 = $x;
        llvm_asm!("csrwi $0, $1" :: "i"(super::csr::$r), "i"(X) :: "volatile");
    }};
}

/// atomic read and set bits in CSR
#[macro_export]
macro_rules! csrs {
    ( $r:ident, $x:expr ) => {{
        let x: u64 = $x;
        llvm_asm!("csrs $0, $1" :: "i"(super::csr::$r), "r"(x) :: "volatile");
    }};
}

/// atomic read and set bits in CSR using immediate
#[macro_export]
macro_rules! csrsi {
    ( $r:ident, $x:expr ) => {{
        const X: u64 = $x;
        llvm_asm!("csrsi $0, $1" :: "i"(super::csr::$r), "i"(X) :: "volatile");
    }};
}

/// atomic read and clear bits in CSR
#[macro_export]
macro_rules! csrc {
    ( $r:ident, $x:expr ) => {{
        let x: u64 = $x;
        llvm_asm!("csrc $0, $1" :: "i"(super::csr::$r), "r"(x) :: "volatile");
    }};
}

/// atomic read and clear bits in CSR using immediate
#[macro_export]
macro_rules! csrci {
    ( $r:ident, $x:expr ) => {{
        const X: u64 = $x;
        llvm_asm!("csrci $0, $1" :: "i"(super::csr::$r), "i"(X) :: "volatile");
    }};
}

pub fn sfence_vma() {
    unsafe { llvm_asm!("sfence.vma" ::: "memory" : "volatile") }
}

pub fn sfence_vma_addr(vaddr: u64) {
    unsafe { llvm_asm!("sfence.vma $0" :: "r"(vaddr) : "memory" : "volatile") }
}

pub fn barrier() {
    unsafe { llvm_asm!("" ::: "memory" : "volatile") }
}

pub fn fence_i() {
    unsafe { llvm_asm!("fence.i" :::: "volatile") }
}

pub fn wfi() {
    unsafe { llvm_asm!("wfi" :::: "volatile") }
}

/// Set the `sepc` CSR to the indicated value.
///
/// Since traps from S-mode always cause a hyperivsor panic, the value of `sstatus.spp` will always
/// be zero. Thus, mret will always cause a vmexit and so any value for sepc is safe.
pub fn set_sepc(value: u64) {
    unsafe { csrw!(sepc, value) }
}

/// Set the `sscratch` CSR. This is safe because `sscratch` does not impact processor execution.
pub fn set_sscratch(value: u64) {
    unsafe { csrw!(sscratch, value) }
}

/// Clear the indicated bits of `sip`. This is safe because interrupt state is not used to enforce
/// safety invariants.
pub fn clear_sip(mask: u64) {
    unsafe { csrc!(sip, mask) }
}

/// Set the FS bits of `sstatus`. This is safe because rvirt does not use hardware floating point
/// support.
pub fn set_sstatus_fs(new: u64) {
    unsafe { csrw!(sstatus, (new & STATUS_FS) | (csrr!(sstatus) & !STATUS_FS)) }
}


pub fn test_instructions() -> bool {
    //STORE	ra, (RVMSTATE_HOST_RA)(a0)
    // load!(ra,)
    // info!("{}",ld!(ra,a,sp));
    // info!("{}",sd!(ra,a,sp));
    // load!(a6,a,sp);
    true
}