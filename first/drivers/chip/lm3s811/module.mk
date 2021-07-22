
CHIP_DIR = drivers/chip/lm3s811

SRC += $(CHIP_DIR)/src/hal_mpu.c
SRC += $(CHIP_DIR)/src/hal_log.c

CFLAGS += -I$(SOURCE_DIR)/drivers/chip/lm3s811/inc
CFLAGS += -I$(SOURCE_DIR)/drivers/CMSIS/Include
