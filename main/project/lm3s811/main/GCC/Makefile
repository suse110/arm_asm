EXEC = main

SOURCE_DIR = ../../../..

PWD = $(shell pwd)
SDK_PATH = $(abspath $(shell pwd))/$(SOURCE_DIR)

BUILD_DIR = $(SOURCE_DIR)/build/$(CHIP_COFNIG)

APP_PATH=project/$(CHIP_COFNIG)/$(EXEC)

ASM_SRC = $(APP_PATH)/GCC/test.s 
SRC = $(APP_PATH)/test.c

LINKSCRIPT = test.ld
GDBINIT = $(SOURCE_DIR)/project/$(CHIP_COFNIG)/main/GCC/gdbinit
CFLAGS += -I$(SOURCE_DIR)/drivers/chip/$(CHIP_COFNIG)/inc 
CFLAGS += -I$(SOURCE_DIR)/drivers/CMSIS/Include

CFLAGS += -march=armv7-m 
CFLAGS += -mcpu=cortex-m3
CFLAGS += -mfloat-abi=soft

QFLAGS += -machine lm3s811evb

include ./feature.mk

include $(SOURCE_DIR)/drivers/chip/$(CHIP_COFNIG)/module.mk
include $(SOURCE_DIR)/kernel/service/module.mk

include $(SOURCE_DIR)/../rule.mk
