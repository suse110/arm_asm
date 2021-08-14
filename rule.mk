CROSS_COMPILE = arm-none-eabi-
#"EABI version 0" means the "apcs-gnu" ABI, while "EABI version 4" is the "aapcs-linux", EABI version 5" is aapcs
CFLAGS += -fno-builtin -march=armv7-m -g -Wall -static -mlittle-endian \
		-mthumb -mcpu=cortex-m3 -ffreestanding -mabi=aapcs -mfloat-abi=soft -Wl,-Map,$(BUILD_DIR)/$(EXEC).map
QEMU = qemu-system-arm
# QFLAGS = -nographic -smp 1 -machine virt
QFLAGS = -nographic -smp 1 -machine lm3s811evb #-monitor stdio

ifeq ($(NOSTDLIB_ENABLE), y)
CFLAGS += -nostdlib
CFLAGS += -DNOSTDLIB_ENABLE
endif
GDB = ${CROSS_COMPILE}gdb

BUILD_DIR ?= .

.DEFAULT_GOAL := all
all:
	$(CROSS_COMPILE)gcc $(CFLAGS) ${SRC} -T $(LINKSCRIPT) -o $(BUILD_DIR)/$(EXEC).elf
	$(CROSS_COMPILE)objcopy -O binary $(BUILD_DIR)/$(EXEC).elf $(BUILD_DIR)/$(EXEC).bin
	$(CROSS_COMPILE)objdump -d -S $(BUILD_DIR)/$(EXEC).elf > $(BUILD_DIR)/$(EXEC).asm

.PHONY : run
run: all
	@echo "Press Ctrl-A and then X to exit QEMU"
	@echo "------------------------------------"
	@echo "No output, please run 'make debug' to see details"
	@$(QEMU) $(QFLAGS) -kernel ./$(BUILD_DIR)/$(EXEC).elf -s -S &

.PHONY : debug
debug: all
	@echo "Press Ctrl-C and then input 'quit' to exit GDB and QEMU"
	@echo "-------------------------------------------------------"
	@$(QEMU) $(QFLAGS) -kernel $(BUILD_DIR)/$(EXEC).elf -s -S &
	@$(GDB) $(BUILD_DIR)/$(EXEC).elf -q -x ${GDBINIT}

.PHONY : gdb
gdb:
	@$(GDB) $(BUILD_DIR)/$(EXEC).elf -q -x ${GDBINIT}

pydebug: all
	@echo "Press Ctrl-C and then input 'quit' to exit GDB and QEMU"
	@echo "-------------------------------------------------------"
	@$(QEMU) $(QFLAGS) -kernel $(BUILD_DIR)/$(EXEC).elf -s -S &
	@$(GDB)-py $(BUILD_DIR)/$(EXEC).elf -q -x ${GDBINIT}-py

pygdb:
	@$(GDB)-py $(BUILD_DIR)/$(EXEC).elf -q -x ${GDBINIT}-py


.PHONY : code
code: all
	@$(CROSS_COMPILE)objdump -d -S $(BUILD_DIR)/$(EXEC).elf | less

.PHONY : hex
hex: all
	@hexdump -C $(BUILD_DIR)/$(EXEC).bin
	@hexdump -C $(BUILD_DIR)/$(EXEC).bin > $(BUILD_DIR)/$(EXEC).binary
	@git diff $(BUILD_DIR)/$(EXEC).binary > $(BUILD_DIR)/$(EXEC).binary.diff

BUILD_FILES = $(BUILD_DIR)/*.o 	  \
			$(BUILD_DIR)/*.bin 	  \
			$(BUILD_DIR)/*.elf 	  \
			$(BUILD_DIR)/*.asm    \
			$(BUILD_DIR)/*.diff   \
			$(BUILD_DIR)/*.binary \
			$(BUILD_DIR)/*.map

.PHONY : clean
clean:
	rm -rf $(BUILD_FILES)
