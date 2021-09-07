EXEC = test
SDKPATH ?= ../../../..
BUILD_DIR = $(SDKPATH)/build/$(CHIP_COFNIG)

APP_DIR=project/$(CHIP_COFNIG)/main

ASMSRC += $(APP_DIR)/GCC/$(EXEC).s 
SRC += $(APP_DIR)/$(EXEC).c

LINKSCRIPT = $(EXEC).ld
GDBINIT = $(SDKPATH)/project/$(CHIP_COFNIG)/main/GCC/gdbinit
CFLAGS += -I$(SDKPATH)/drivers/chip/$(CHIP_COFNIG)/inc 
CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Include

CFLAGS += -march=armv7-m 
CFLAGS += -mcpu=cortex-m3
CFLAGS += -mfloat-abi=soft

QFLAGS += -machine lm3s811evb

include ./feature.mk

include $(SDKPATH)/drivers/chip/$(CHIP_COFNIG)/module.mk
include $(SDKPATH)/kernel/service/module.mk

include $(SDKPATH)/rule.mk
