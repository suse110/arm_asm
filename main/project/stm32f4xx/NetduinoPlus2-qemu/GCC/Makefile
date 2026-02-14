EXEC = NetduinoPlus2-qemu

SDKPATH ?= ../../../..

BUILD_DIR = $(SDKPATH)/build/$(CHIP_COFNIG)/$(EXEC)

APP_DIR=project/$(CHIP_COFNIG)/$(EXEC)

ASMSRC += $(APP_DIR)/GCC/startup_stm32f405xx.s 
SRC += $(APP_DIR)/src/main.c
SRC += $(APP_DIR)/src/serial.c
SRC += $(APP_DIR)/src/stm32f4xx_hal_msp.c
SRC += $(APP_DIR)/src/stm32f4xx_it.c
SRC += $(APP_DIR)/src/syscalls.c
SRC += $(APP_DIR)/src/system_stm32f4xx.c
SRC += $(APP_DIR)/src/hal_log.c

LINKSCRIPT = $(SDKPATH)/project/$(CHIP_COFNIG)/$(EXEC)/GCC/STM32F405RGTx_FLASH.ld

GDBINIT = $(SDKPATH)/project/$(CHIP_COFNIG)/$(EXEC)/GCC/gdbinit
CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Include
CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Device/ST/STM32F4xx/Include
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
CFLAGS += -mfloat-abi=hard
CFLAGS += -mfpu=fpv4-sp-d16
CFLAGS += -DUSE_STDPERIPH_DRIVER
CFLAGS += -DSTM32F4XX
CFLAGS += -DSTM32F405xx


CFLAGS += -ffreestanding
CFLAGS += -Wno-unused-parameter
#CFLAGS += -mfloat-abi=soft


QFLAGS += -machine netduinoplus2


include ./feature.mk


include $(SDKPATH)/drivers/chip/$(CHIP_COFNIG)/module.mk
include $(SDKPATH)/kernel/module.mk
include $(SDKPATH)/kernel/third/unit-test/module.mk
include $(SDKPATH)/middleware/module.mk

include $(SDKPATH)/rule.mk
