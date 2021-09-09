EXEC = main

SDKPATH ?= ../../../..

BUILD_DIR = $(SDKPATH)/build/$(CHIP_COFNIG)

APP_DIR=project/$(CHIP_COFNIG)/main

ASMSRC += $(APP_DIR)/GCC/startup_stm32l552zetxq.s 
SRC += $(APP_DIR)/src/main.c
SRC += $(APP_DIR)/src/stm32l5xx_hal_msp.c
SRC += $(APP_DIR)/src/stm32l5xx_it.c
SRC += $(APP_DIR)/src/user/syscalls.c
SRC += $(APP_DIR)/src/user/sysmem.c
SRC += $(APP_DIR)/src/system_stm32l5xx.c

LINKSCRIPT = $(SDKPATH)/project/$(CHIP_COFNIG)/main/GCC/STM32L552ZETXQ_FLASH.ld

GDBINIT = $(SDKPATH)/project/$(CHIP_COFNIG)/main/GCC/gdbinit
CFLAGS += -I$(SDKPATH)/drivers/chip/$(CHIP_COFNIG)/inc 
CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Include
CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Device/ST/STM32L5xx/Include
CFLAGS += -I$(SDKPATH)/project/$(CHIP_COFNIG)/main/inc

CFLAGS += -ggdb
CFLAGS += -O0
CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -Warray-bounds
CFLAGS += -mcpu=cortex-m33
CFLAGS += -mthumb
CFLAGS += -mlittle-endian
CFLAGS += -mthumb-interwork
# CFLAGS += -mfloat-abi=hard
# CFLAGS += -mfpu=fpv4-sp-d16
CFLAGS += -DUSE_STDPERIPH_DRIVER
CFLAGS += -DSTM32F5XX
CFLAGS += -DSTM32L552xx

CFLAGS += -ffunction-sections
CFLAGS += -fdata-sections
CFLAGS += -Wl,--gc-sections
CFLAGS += -ffreestanding
CFLAGS += -Wno-unused-parameter
# CFLAGS += -mfloat-abi=soft


include ./feature.mk


include $(SDKPATH)/drivers/chip/$(CHIP_COFNIG)/module.mk
include $(SDKPATH)/kernel/service/module.mk

include $(SDKPATH)/rule.mk
