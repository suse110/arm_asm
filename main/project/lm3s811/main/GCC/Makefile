EXEC = test

SOURCE_DIR = ../../../..
SDK_PATH = $(abspath $(PWD)/$(SOURCE_DIR))

PWD = $(shell pwd)

BUILD_DIR = $(SOURCE_DIR)/build/$(CHIP_COFNIG)

SRC += $(EXEC).s 
SRC += ../$(EXEC).c

LINKSCRIPT = $(EXEC).ld
GDBINIT = $(SOURCE_DIR)/project/$(CHIP_COFNIG)/main/GCC/gdbinit
CFLAGS += -I$(SOURCE_DIR)/drivers/chip/$(CHIP_COFNIG)/inc 
CFLAGS += -I$(SOURCE_DIR)/drivers/CMSIS/Include

CFLAGS += -march=armv7-m 
CFLAGS += -mcpu=cortex-m3
CFLAGS += -mfloat-abi=soft
include ./feature.mk

include $(SOURCE_DIR)/drivers/chip/$(CHIP_COFNIG)/module.mk
include $(SOURCE_DIR)/kernel/service/module.mk

include $(SOURCE_DIR)/../rule.mk
