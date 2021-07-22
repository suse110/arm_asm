CROSS_COMPILE = arm-none-eabi-
CFLAGS += -nostdlib -fno-builtin -march=armv7-m -g -Wall -static -mlittle-endian \
		-mthumb -mcpu=cortex-m3 -ffreestanding -mabi=apcs-gnu -mfloat-abi=soft 
QEMU = qemu-system-arm
# QFLAGS = -nographic -smp 1 -machine virt 
QFLAGS = -nographic -smp 1 -machine lm3s811evb #-monitor stdio 

GDB = ${CROSS_COMPILE}gdb

.DEFAULT_GOAL := all
all:
	@$(CROSS_COMPILE)gcc $(CFLAGS) ${SRC} -T $(LINKSCRIPT) -o $(EXEC).elf 	
	@$(CROSS_COMPILE)objcopy -O binary $(EXEC).elf $(EXEC).bin
	@$(CROSS_COMPILE)objdump -d -S $(EXEC).elf > $(EXEC).asm
	@hexdump -C $(EXEC).bin > $(EXEC).binary
	@git diff $(EXEC).binary > $(EXEC).binary.diff

.PHONY : run
run: all
	@echo "Press Ctrl-A and then X to exit QEMU"
	@echo "------------------------------------"
	@echo "No output, please run 'make debug' to see details"
	@$(QEMU) $(QFLAGS) -kernel ./$(EXEC).elf -s -S &

.PHONY : debug
debug: all
	@echo "Press Ctrl-C and then input 'quit' to exit GDB and QEMU"
	@echo "-------------------------------------------------------"
	@$(QEMU) $(QFLAGS) -kernel $(EXEC).elf -s -S &
	@$(GDB) $(EXEC).elf -q -x ${GDBINIT}

.PHONY : gdb
gdb: all
	@$(GDB) $(EXEC).elf -q -x ${GDBINIT}


.PHONY : code
code: all
	@$(CROSS_COMPILE)objdump -d -S $(EXEC).elf | less

.PHONY : hex
hex: all
	@hexdump -C $(EXEC).bin

.PHONY : clean
clean:
	rm -rf *.o *.bin *.elf *.asm *.binary
