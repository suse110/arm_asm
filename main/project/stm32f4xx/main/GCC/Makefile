EXEC = main


SOURCE_DIR = ../../../..

SDK_PATH = $(abspath $(shell pwd))/$(SOURCE_DIR)

# SDK_PATH = $(abspath $(PWD)/$(SOURCE_DIR))
BUILD_DIR = $(SDK_PATH)/build/$(CHIP_COFNIG)

APP_PATH=project/$(CHIP_COFNIG)/$(EXEC)

ASM_SRC += $(APP_PATH)/GCC/startup_stm32f401xe.s 

SRC += $(APP_PATH)/src/main.c
SRC += $(APP_PATH)/src/serial.c
SRC += $(APP_PATH)/src/steper.c
SRC += $(APP_PATH)/src/stm32f4xx_hal_msp.c
SRC += $(APP_PATH)/src/stm32f4xx_it.c
SRC += $(APP_PATH)/src/syscalls.c
SRC += $(APP_PATH)/src/system_stm32f4xx.c
SRC += $(APP_PATH)/src/hal_log.c

LINKSCRIPT = $(SOURCE_DIR)/project/$(CHIP_COFNIG)/main/GCC/nucleo.ld

GDBINIT = $(SOURCE_DIR)/project/$(CHIP_COFNIG)/main/GCC/gdbinit
CFLAGS += -I$(SOURCE_DIR)/drivers/chip/$(CHIP_COFNIG)/inc 
CFLAGS += -I$(SOURCE_DIR)/drivers/CMSIS/Include
CFLAGS += -I$(SOURCE_DIR)/drivers/CMSIS/Device/ST/STM32F4xx/Include
CFLAGS += -I$(SOURCE_DIR)/project/$(CHIP_COFNIG)/main/inc

# CFLAGS += -march=armv7-m 
CFLAGS += -mcpu=cortex-m4
# CFLAGS += -mfloat-abi=soft


include ./feature.mk


include $(SOURCE_DIR)/drivers/chip/$(CHIP_COFNIG)/module.mk
include $(SOURCE_DIR)/kernel/service/module.mk

include $(SOURCE_DIR)/../rule.mk
