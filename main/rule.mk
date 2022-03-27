CROSS_COMPILE = arm-none-eabi-
#"EABI version 0" means the "apcs-gnu" ABI, while "EABI version 4" is the "aapcs-linux", EABI version 5" is aapcs
CFLAGS += -g -Wall -mlittle-endian -mthumb -mabi=aapcs


# -ffreestanding 按独立环境编译，该环境可以没有标准库，且对main()函数没有要求。
# 最典型的例子就是操作系统内核。该选项隐含设置了 -fno-builtin，且与 -fno-hosted 等价
CFLAGS +=-ffreestanding


LDFLAGS += -static -Wl,-Map,$(BUILD_DIR)/$(EXEC).map

QEMU = qemu-system-arm
# QFLAGS = -nographic -smp 1 -machine virt
QFLAGS += -nographic -smp 1  #-monitor stdio


# 背景
# 有时我们的程序会定义一些暂时使用不上的功能和函数，虽然我们不使用这些功能和函数，
# 但它们往往会浪费我们的ROM和RAM的空间。这在使用静态库时，体现的更为严重。有时，
# 我们只使用了静态库仅有的几个功能，但是系统默认会自动把整个静态库全部链接到可执行程序中，
# 造成可执行程序的大小大大增加。

# 参数详解
# 为了解决前面分析的问题，我们引入了标题中的几个参数。GCC链接操作是以section作为最
# 小的处理单元，只要一个section中的某个符号被引用，该section就会被加入到可执行程序
# 中去。因此，GCC在编译时可以使用 -ffunction-sections和 -fdata-sections 将每个
# 函数或符号创建为一个sections，其中每个sections名与function或data名保持一致。而
# 在链接阶段， -Wl,–gc-sections 指示链接器去掉不用的section（其中-wl, 表示后面的
# 参数 -gc-sections 传递给链接器），这样就能减少最终的可执行程序的大小了。

# 我们常常使用下面的配置启用这个功能：
CFLAGS += -ffunction-sections -fdata-sections
LDFLAGS += -Wl,--gc-sections

ifeq ($(NOSTDLIB_ENABLE), y)
CFLAGS += -nostdlib
CFLAGS += -DNOSTDLIB_ENABLE
endif
ifeq ($(QEMU_DEBUG_ENABLE), y)
CFLAGS += -DQEMU_DEBUG_ENABLE
endif

GDB = ${CROSS_COMPILE}gdb

BUILD_DIR ?= .

Objects = $(SRC:%.c=$(BUILD_DIR)/%.o)
AsmObjects = $(ASMSRC:%.s=$(BUILD_DIR)/%.o)

$(BUILD_DIR)/$(EXEC).elf:$(Objects) $(AsmObjects)
	$(CROSS_COMPILE)gcc -o $@ $^  $(CFLAGS) $(LDFLAGS) -T $(LINKSCRIPT)

$(Objects): $(BUILD_DIR)/%.o : $(SDKPATH)/%.c
	@mkdir -p $(shell dirname $@)
	$(CROSS_COMPILE)gcc -c $(CFLAGS) $^ -o $@

$(AsmObjects): $(BUILD_DIR)/%.o : $(SDKPATH)/%.s
	@mkdir -p $(shell dirname $@)
	$(CROSS_COMPILE)gcc -c $(CFLAGS) $^ -o $@

.DEFAULT_GOAL := all
# all:
# 	@echo "SDK_PATH="$(SDKPATH)
# 	$(CROSS_COMPILE)gcc $(CFLAGS) ${SRC} $(ASMSRC) -T $(LINKSCRIPT) -o $(BUILD_DIR)/$(EXEC).elf
# 	$(CROSS_COMPILE)objcopy -O binary $(BUILD_DIR)/$(EXEC).elf $(BUILD_DIR)/$(EXEC).bin
# 	$(CROSS_COMPILE)objdump -d -S $(BUILD_DIR)/$(EXEC).elf > $(BUILD_DIR)/$(EXEC).asm


all:$(BUILD_DIR)/$(EXEC).elf
	$(CROSS_COMPILE)objcopy -O binary $(BUILD_DIR)/$(EXEC).elf $(BUILD_DIR)/$(EXEC).bin
	$(CROSS_COMPILE)objcopy -O ihex $(BUILD_DIR)/$(EXEC).elf $(BUILD_DIR)/$(EXEC).hex
	$(CROSS_COMPILE)objdump -D -S $(BUILD_DIR)/$(EXEC).elf > $(BUILD_DIR)/$(EXEC).asm
	$(CROSS_COMPILE)size $(BUILD_DIR)/$(EXEC).elf


.PHONY : run
run: all
	@echo "Press Ctrl-A and then X to exit QEMU"
	@echo "------------------------------------"
	@echo "No output, please run 'make debug' to see details"
	@$(QEMU) $(QFLAGS) -kernel ./$(BUILD_DIR)/$(EXEC).elf -s -S &

run_block: all
	@echo "Press Ctrl-A and then X to exit QEMU"
	@echo "------------------------------------"
	@echo "No output, please run 'make debug' to see details"
	@$(QEMU) $(QFLAGS) -kernel ./$(BUILD_DIR)/$(EXEC).elf -s -S


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
	@hexdump -C -v $(BUILD_DIR)/$(EXEC).bin
	@hexdump -C -v $(BUILD_DIR)/$(EXEC).bin > $(BUILD_DIR)/$(EXEC).binary
	@git diff $(BUILD_DIR)/$(EXEC).binary > $(BUILD_DIR)/$(EXEC).binary.diff

BUILD_FILES = $(BUILD_DIR)/*

.PHONY : clean
clean:
	rm -rf $(BUILD_FILES)
