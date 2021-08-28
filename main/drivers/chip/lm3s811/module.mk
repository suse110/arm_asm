
CHIP_DIR = drivers/chip/lm3s811

SRC += $(SOURCE_DIR)/$(CHIP_DIR)/src/hal_mpu.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/src/hal_log.c
ifeq ($(NOSTDLIB_ENABLE),n)
SRC += $(CHIP_DIR)/src/syscalls.c
endif
CFLAGS += -I$(SOURCE_DIR)/drivers/chip/lm3s811/inc
CFLAGS += -I$(SOURCE_DIR)/drivers/CMSIS/Include
