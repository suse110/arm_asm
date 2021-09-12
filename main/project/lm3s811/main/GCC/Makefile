EXEC = main

SDKPATH ?= ../../../..

BUILD_DIR = $(SDKPATH)/build/$(CHIP_COFNIG)/$(EXEC)

APP_DIR=project/$(CHIP_COFNIG)/$(EXEC)

include ./feature.mk
include $(SDKPATH)/drivers/chip/$(CHIP_COFNIG)/module.mk
include $(SDKPATH)/kernel/service/module.mk

ASMSRC += $(APP_DIR)/GCC/test.s 
SRC += $(APP_DIR)/test.c

LINKSCRIPT = test.ld
GDBINIT = $(SDKPATH)/project/$(CHIP_COFNIG)/$(EXEC)/GCC/gdbinit
CFLAGS += -I$(SDKPATH)/drivers/chip/$(CHIP_COFNIG)/inc 
CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Include

CFLAGS += -march=armv7-m 
CFLAGS += -mcpu=cortex-m3
CFLAGS += -mfloat-abi=soft

QFLAGS += -machine lm3s811evb


include $(SDKPATH)/rule.mk
