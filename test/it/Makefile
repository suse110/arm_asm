EXEC = test
CROSS_COMPILE = arm-none-linux-gnueabihf-
BUILD_DIR=./build

ASMSRC = $(EXEC).s 
LINKSCRIPT = $(EXEC).ld
GDBINIT = ../gdbinit
#use stdlib
NOSTDLIB_ENABLE = y

# Cortex A 系列支持ARM指令
CFLAGS += -march=armv7-a 
CFLAGS += -mcpu=cortex-a8
CFLAGS += -mfloat-abi=soft

QFLAGS += -machine cubieboard

include ../rule.mk
