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

# CFLAGS += -march=armv7-m 
CFLAGS += -mcpu=cortex-m4
# CFLAGS += -mfloat-abi=soft


include ./feature.mk


include $(SDKPATH)/drivers/chip/$(CHIP_COFNIG)/module.mk
include $(SDKPATH)/kernel/service/module.mk

include $(SDKPATH)/rule.mk
