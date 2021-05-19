TARGET := riscv64gc-unknown-none-elf
MODE := release
APP_DIR := src/bin
TARGET_DIR := target/$(TARGET)/$(MODE)
APPS := $(wildcard $(APP_DIR)/*.rs)
ELFS := $(patsubst $(APP_DIR)/%.rs, $(TARGET_DIR)/%, $(APPS))
BINS := $(patsubst $(APP_DIR)/%.rs, $(TARGET_DIR)/%.bin, $(APPS))

OBJDUMP := /opt/riscv64-unknown-elf-gcc-8.3.0-2020.04.0-x86_64-linux-ubuntu14/bin/riscv64-unknown-elf-objdump 
OBJCOPY := rust-objcopy --binary-architecture=riscv64

env:
	(rustup target list | grep "riscv64gc-unknown-none-elf (installed)") || rustup target add $(TARGET)
	cargo install cargo-binutils --vers ~0.2
	rustup component add rust-src
	rustup component add llvm-tools-preview

elf: $(APPS)
	@python3 build.py

binary: elf
	$(foreach elf, $(ELFS), $(OBJCOPY) $(elf) --strip-all -O binary $(patsubst $(TARGET_DIR)/%, $(TARGET_DIR)/%.bin, $(elf));)

# $(OBJDUMP) $(KERNEL_ELF) | less
disasm:
	@echo $(ELFS)
	@$(foreach elf, $(ELFS), $(OBJDUMP) -d $(elf) > $(elf).asm;)

build: env binary

clean:
	@cargo clean

.PHONY: elf binary build clean