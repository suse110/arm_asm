CROSS_COMPILE = arm-none-eabi-
CFLAGS += -nostdlib -fno-builtin -march=armv7-m -g -Wall -static -mlittle-endian \
		-mthumb -mcpu=cortex-m3 -ffreestanding -mabi=apcs-gnu -mfloat-abi=soft 
QEMU = qemu-system-arm
# QFLAGS = -nographic -smp 1 -machine virt 
QFLAGS = -nographic -smp 1 -machine lm3s811evb #-monitor stdio 

GDB = ${CROSS_COMPILE}gdb

BUILD_DIR ?= .

.DEFAULT_GOAL := all
all:
	@$(CROSS_COMPILE)gcc $(CFLAGS) ${SRC} -T $(LINKSCRIPT) -o $(BUILD_DIR)/$(EXEC).elf 	
	@$(CROSS_COMPILE)objcopy -O binary $(BUILD_DIR)/$(EXEC).elf $(BUILD_DIR)/$(EXEC).bin
	@$(CROSS_COMPILE)objdump -d -S $(BUILD_DIR)/$(EXEC).elf > $(BUILD_DIR)/$(EXEC).asm
	@hexdump -C $(BUILD_DIR)/$(EXEC).bin > $(BUILD_DIR)/$(EXEC).binary
	@git diff $(BUILD_DIR)/$(EXEC).binary > $(BUILD_DIR)/$(EXEC).binary.diff

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
gdb: all
	@$(GDB) $(BUILD_DIR)/$(EXEC).elf -q -x ${GDBINIT}


.PHONY : code
code: all
	@$(CROSS_COMPILE)objdump -d -S $(BUILD_DIR)/$(EXEC).elf | less

.PHONY : hex
hex: all
	@hexdump -C $(BUILD_DIR)/$(EXEC).bin

.PHONY : clean
clean:
	rm -rf $(BUILD_DIR)/*.o $(BUILD_DIR)/*.bin $(BUILD_DIR)/*.elf $(BUILD_DIR)/*.asm  $(BUILD_DIR)/*.diff
