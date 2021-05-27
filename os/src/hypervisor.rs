use rvm::*;
use alloc::sync::Arc;


unsafe extern "C" fn hypercall() {
    loop{}
    //todo : riscv 
    // for i in 0..100 {
    //     asm!(
    //         "ecall",
    //         // todo: riscv fix
    //         // inout("ax") i => _,
    //         // in("bx") 2,
    //         // in("cx") 3,
    //         // in("dx") 3,
    //         // in("si") 3,
    //     );
    // }
    // asm!("mov qword ptr [$0xfff233], $2333");
}

fn setup() -> RvmResult<(Arc<Guest>, Vcpu)> {
    if !check_hypervisor_feature() {
        return Err(RvmError::NotSupported);
    }

    info!("check hypervisor success");

    //todo
    let entry = 0x0000_0000_9000_0000 as usize;
    info!("entry address is {:#x}",entry);
    // let gpm = DefaultGuestPhysMemorySet::new();
    let guest = Guest::new()?;
    let vcpu = Vcpu::new(entry as u64, guest.clone())?;

    // let hpaddr0 = alloc_frame().unwrap();
    // let hpaddr1 = alloc_frame().unwrap();
    // let hpaddr2 = alloc_frame().unwrap();
    // guest.add_memory_region(GuestPhysAddr::from(0), 0x1000, Some(HostPhysAddr::from(hpaddr0)))?;
    // guest.add_memory_region(GuestPhysAddr::from(0x1000), 0x1000, Some(HostPhysAddr::from(hpaddr1)))?;
    // guest.add_memory_region(GuestPhysAddr::from(0x2000), 0x1000, Some(HostPhysAddr::from(hpaddr2)))?;
    // unsafe {
    //     core::ptr::copy(hypercall as usize as *const u8, hpaddr2 as *mut u8, 0x100);
    // }

    // // Delay mapping
    // guest.add_memory_region(GuestPhysAddr::from(0x3000), 0x1000 * 10, None)?;

    // // Set MMIO trap
    // guest.set_trap(TrapKind::GuestTrapMem, 0xfff000, 0x1000, None, 0x2333)?;

    // Create guest page table
    // let pt0 = unsafe { &mut *(hpaddr0 as *mut PageTable) };
    // let pt1 = unsafe { &mut *(hpaddr1 as *mut PageTable) };
    // pt0[0].set_addr(
    //     PhysAddr::new(0x1000),
    //     PTF::PRESENT | PTF::WRITABLE | PTF::USER_ACCESSIBLE,
    // );
    // pt1[0].set_addr(
    //     PhysAddr::new(0),
    //     PTF::PRESENT | PTF::WRITABLE | PTF::USER_ACCESSIBLE | PTF::HUGE_PAGE, // 1GB page
    // );

    Ok((guest, vcpu))
}

pub fn run_hypervisor() -> RvmResult {
    info!("run hypervisor");
    let (_guest, mut vcpu) = setup()?;
    // vcpu.write_state(&VcpuState {
    //     rax: 1,
    //     rbx: 2,
    //     rcx: 3,
    //     rdx: 4,
    //     rsp: 0x8000,
    //     rbp: 5,
    //     rsi: 6,
    //     rdi: 7,
    //     r8: 8,
    //     r9: 9,
    //     r10: 10,
    //     r11: 11,
    //     r12: 12,
    //     r13: 13,
    //     r14: 14,
    //     r15: 15,
    //     rflags: 0,
    // })?;

    info!("set up successfully");

    let packet = vcpu.resume()?;
    // let state = vcpu.read_state()?;
    info!("{:#x?}", packet);
    // info!("{:#x?}", state);

    // assert_eq!(packet.kind, RvmExitPacketKind::GuestMmio);
    // assert_eq!(packet.key, 0x2333);
    // assert_eq!(unsafe { packet.inner.mmio.addr }, 0xfff233);
    // assert_eq!(unsafe { packet.inner.mmio.inst_len }, 0xc);
    // assert_eq!(unsafe { packet.inner.mmio.default_operand_size }, 0x4);
    // assert_eq!(
    //     unsafe { &packet.inner.mmio.inst_buf[0..12] },
    //     &[0x48, 0xc7, 0x4, 0x25, 0x33, 0xf2, 0xff, 0x0, 0x1d, 0x9, 0x0, 0x0]
    // );
    // assert_eq!(state.rflags, 0x44);
    info!("Run hypervisor successfully!");

    Ok(())
}
