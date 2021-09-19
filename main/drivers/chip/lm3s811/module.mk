
CHIP_DIR = drivers/chip/lm3s811

SRC += $(CHIP_DIR)/src/hal_mpu.c
SRC += $(CHIP_DIR)/src/hal_log.c
ifeq ($(NOSTDLIB_ENABLE),n)
SRC += $(CHIP_DIR)/src/syscalls.c
endif
CFLAGS += -I$(SDKPATH)/drivers/chip/lm3s811/inc
CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Include
CFLAGS += -DHAL_DRIVER_ENABLE