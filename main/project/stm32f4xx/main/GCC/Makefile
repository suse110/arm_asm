EXEC = main

SOURCE_DIR = ../../../..
SDK_PATH = $(abspath $(PWD)/$(SOURCE_DIR))

PWD = $(shell pwd)

BUILD_DIR = $(SOURCE_DIR)/build/$(CHIP_COFNIG)

SRC += startup_stm32f401xe.s 
SRC += ../src/main.c
SRC += ../src/serial.c
SRC += ../src/steper.c
SRC += ../src/stm32f4xx_hal_msp.c
SRC += ../src/stm32f4xx_it.c
SRC += ../src/syscalls.c
SRC += ../src/system_stm32f4xx.c
SRC += ../src/hal_log.c

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
