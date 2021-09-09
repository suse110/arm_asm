EXEC = main

SDKPATH ?= ../../../..

BUILD_DIR = $(SDKPATH)/build/$(CHIP_COFNIG)

APP_DIR=project/$(CHIP_COFNIG)/main

ASMSRC += $(APP_DIR)/GCC/startup_stm32f401xe.s 
SRC += $(APP_DIR)/src/main.c
SRC += $(APP_DIR)/src/serial.c
SRC += $(APP_DIR)/src/steper.c
SRC += $(APP_DIR)/src/stm32f4xx_hal_msp.c
SRC += $(APP_DIR)/src/stm32f4xx_it.c
SRC += $(APP_DIR)/src/syscalls.c
SRC += $(APP_DIR)/src/system_stm32f4xx.c
SRC += $(APP_DIR)/src/hal_log.c

LINKSCRIPT = $(SDKPATH)/project/$(CHIP_COFNIG)/main/GCC/nucleo.ld

GDBINIT = $(SDKPATH)/project/$(CHIP_COFNIG)/main/GCC/gdbinit
CFLAGS += -I$(SDKPATH)/drivers/chip/$(CHIP_COFNIG)/inc 
CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Include
CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Device/ST/STM32F4xx/Include
CFLAGS += -I$(SDKPATH)/project/$(CHIP_COFNIG)/main/inc

CFLAGS += -ggdb
CFLAGS += -O0
CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -Warray-bounds
CFLAGS += -mcpu=cortex-m4
CFLAGS += -mthumb
CFLAGS += -mlittle-endian
CFLAGS += -mthumb-interwork
CFLAGS += -mfloat-abi=hard
CFLAGS += -mfpu=fpv4-sp-d16
CFLAGS += -DUSE_STDPERIPH_DRIVER
CFLAGS += -DSTM32F4XX
CFLAGS += -DSTM32F401xE


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
