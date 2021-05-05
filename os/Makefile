# 	board

#   ACCEL = on | off            [ x86_64 only] Enable/disable kvm/hvf acceleration
#   HYPERVISOR = on | off       [ x86_64 only] Enable/disable the RVM hypervisor, and set ACCEL to on
#   FEATURES = profile | ...    Add additional features



# HYPERVISOR
ACCEL ?= off
HYPERVISOR ?= off
LOG  ?=

ifeq ($(HYPERVISOR), on)
	FEATURES += hypervisor
	ACCEL = on
endif

ifeq ($(ACCEL), on)
	ifeq ($(shell uname), Darwin)
		qemu_opts += -accel hvf
	else
		qemu_opts += -accel kvm -cpu host
	endif
endif

# Building
TARGET := riscv64gc-unknown-none-elf
MODE := release
KERNEL_ELF := target/$(TARGET)/$(MODE)/os
KERNEL_BIN := $(KERNEL_ELF).bin
GUEST_BIN := ../../GuestOS/os/$(KERNEL_BIN)
DISASM_TMP := target/$(TARGET)/$(MODE)/asm
FS_IMG := ../user/target/$(TARGET)/$(MODE)/fs.img
SDCARD := /dev/sdb
APPS := ../user/src/bin/*

# BOARD
BOARD ?= qemu
SBI ?= rustsbi
BOOTLOADER := ../bootloader/$(SBI)-$(BOARD).bin
K210_BOOTLOADER_SIZE := 131072

# KERNEL ENTRY
ifeq ($(BOARD), qemu)
	KERNEL_ENTRY_PA := 0x80200000
	GUEST_ENTRY_PA :=0x80300000
else ifeq ($(BOARD), k210)
	KERNEL_ENTRY_PA := 0x80020000
	GUEST_ENTRY_PA :=0x80300000
endif

FEATURES += board_$(BOARD)

# Run K210
K210-SERIALPORT	= /dev/ttyUSB0
K210-BURNER	= ../tools/kflash.py

# Binutils
OBJDUMP := /opt/riscv64-unknown-elf-gcc-8.3.0-2020.04.0-x86_64-linux-ubuntu14/bin/riscv64-unknown-elf-objdump -d
OBJCOPY := rust-objcopy --binary-architecture=riscv64

# Disassembly
DISASM ?= -x

build: $(KERNEL_BIN)

env:
	(rustup target list | grep "riscv64gc-unknown-none-elf (installed)") || rustup target add $(TARGET)
	cargo install cargo-binutils --vers ~0.2
	rustup component add rust-src
	rustup component add llvm-tools-preview

sdcard: $(FS_IMG)
	@echo "Are you sure write to $(SDCARD) ? [y/N] " && read ans && [ $${ans:-N} = y ]
	@sudo dd if=/dev/zero of=$(SDCARD) bs=1048576 count=16
	@sudo dd if=$(FS_IMG) of=$(SDCARD)

$(KERNEL_BIN): kernel
	@$(OBJCOPY) $(KERNEL_ELF) --strip-all -O binary $@

$(FS_IMG): $(APPS)
	@cd ../user && make build
	@cd ../easy-fs-fuse && cargo run --release -- -s ../user/src/bin/ -t ../user/target/riscv64gc-unknown-none-elf/release/

$(APPS):

kernel:
	@echo Platform: $(BOARD)
	@cp src/linker-$(BOARD).ld src/linker.ld
	@cargo build --release --features "$(FEATURES)"
	@rm src/linker.ld

clean:
	@cargo clean

disasm: kernel
	@$(OBJDUMP) $(KERNEL_ELF) | less

disasm-vim: kernel
	@$(OBJDUMP) $(DISASM) $(KERNEL_ELF) > $(DISASM_TMP)
	@vim $(DISASM_TMP)
	@rm $(DISASM_TMP)

run: run-inner

	

# 就这里本来是做了一下判断，是否开启h特性。但是因为在RVM里面不会判断是否开启了h，所以就直接开了吧
# 反正也不会有什么损失（？）
# 如果以后会判断了就再改回来好了······
run-inner: build
ifeq ($(BOARD),qemu)
ifeq ($(ACCEL), on)
	@qemu-system-riscv64 \
		-machine virt -cpu rv64,x-h=true\
		-nographic \
		-bios default \
		-device loader,file=$(KERNEL_BIN),addr=$(KERNEL_ENTRY_PA) \
		-device loader,file=$(GUEST_BIN),addr=$(GUEST_ENTRY_PA) \
		-device virtio-blk-device,drive=x0,bus=virtio-mmio-bus.0
else
	@qemu-system-riscv64 \
		-machine virt -cpu rv64,x-h=true\
		-nographic \
		-bios default \
		-device loader,file=$(KERNEL_BIN),addr=$(KERNEL_ENTRY_PA) \
		-device loader,file=$(GUEST_BIN),addr=$(GUEST_ENTRY_PA) \
		-device virtio-blk-device,drive=x0,bus=virtio-mmio-bus.0
endif
else
	(which $(K210-BURNER)) || (cd .. && git clone https://github.com/sipeed/kflash.py.git && mv kflash.py tools)
	@cp $(BOOTLOADER) $(BOOTLOADER).copy
	@dd if=$(KERNEL_BIN) of=$(BOOTLOADER).copy bs=$(K210_BOOTLOADER_SIZE) seek=1
	@mv $(BOOTLOADER).copy $(KERNEL_BIN)
	@sudo chmod 777 $(K210-SERIALPORT)
	python3 $(K210-BURNER) -p $(K210-SERIALPORT) -b 1500000 $(KERNEL_BIN)
	python3 -m serial.tools.miniterm --eol LF --dtr 0 --rts 0 --filter direct $(K210-SERIALPORT) 115200
endif

debug: build
	@qemu-system-riscv64 \
			-machine virt -cpu rv64,x-h=true\
			-nographic \
			-bios default \
			-device loader,file=$(KERNEL_BIN),addr=$(KERNEL_ENTRY_PA) \
			-device loader,file=$(GUEST_BIN),addr=$(GUEST_ENTRY_PA) \
			-device virtio-blk-device,drive=x0,bus=virtio-mmio-bus.0  -s -S & 
	/opt/riscv64-unknown-elf-gcc-8.3.0-2020.04.0-x86_64-linux-ubuntu14/bin/riscv64-unknown-elf-gdb -ex 'file $(KERNEL_ELF)' -x gdbinit

.PHONY: build env kernel clean disasm disasm-vim run-inner