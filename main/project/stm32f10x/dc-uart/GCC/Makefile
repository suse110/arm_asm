EXEC = dc-uart

SDKPATH ?= ../../../..

BUILD_DIR = $(SDKPATH)/build/$(CHIP_COFNIG)/$(EXEC)

APP_DIR=project/$(CHIP_COFNIG)/$(EXEC)

include ./feature.mk
include $(SDKPATH)/drivers/chip/$(CHIP_COFNIG)/module.mk
include $(SDKPATH)/kernel/service/module.mk

ASMSRC += $(APP_DIR)/GCC/startup_stm32f10x_md.s 
SRC += $(APP_DIR)/src/main.c
SRC += $(APP_DIR)/src/serial.c
SRC += $(APP_DIR)/src/stm32f10x_it.c
SRC += $(APP_DIR)/src/syscalls.c
SRC += $(APP_DIR)/src/system_stm32f10x.c
SRC += $(APP_DIR)/src/hal_log.c
SRC += $(APP_DIR)/src/delay.c

LINKSCRIPT = $(SDKPATH)/project/$(CHIP_COFNIG)/$(EXEC)/GCC/nucleo.ld

GDBINIT = $(SDKPATH)/project/$(CHIP_COFNIG)/$(EXEC)/GCC/gdbinit
CFLAGS += -I$(SDKPATH)/drivers/chip/$(CHIP_COFNIG)/inc 
CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Include
CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Device/ST/STM32F10x
CFLAGS += -I$(SDKPATH)/project/$(CHIP_COFNIG)/$(EXEC)/inc

CFLAGS += -ggdb
CFLAGS += -O0
CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -Warray-bounds
CFLAGS += -mcpu=cortex-m4
CFLAGS += -mthumb
CFLAGS += -mlittle-endian
CFLAGS += -mthumb-interwork
CFLAGS += -mfloat-abi=soft
CFLAGS += -mfpu=fpv4-sp-d16
CFLAGS += -DUSE_STDPERIPH_DRIVER
CFLAGS += -DSTM32F1X


CFLAGS += -ffunction-sections
CFLAGS += -fdata-sections
CFLAGS += -Wl,--gc-sections
CFLAGS += -ffreestanding
CFLAGS += -Wno-unused-parameter
# CFLAGS += -nostartfiles

# CFLAGS += -nodefaultlibs
#This fix undefined reference to `__aeabi_uldivmod'
# CFLAGS += -lgcc


include $(SDKPATH)/rule.mk
