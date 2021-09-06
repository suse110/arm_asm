EXEC = test

BUILD_DIR = ./build

SRC = $(EXEC).s $(EXEC).c
LINKSCRIPT = $(EXEC).ld
GDBINIT = gdbinit
#use stdlib
NOSTDLIB_ENABLE = y

CFLAGS += -march=armv7-m 
CFLAGS += -mcpu=cortex-m3
CFLAGS += -mfloat-abi=soft

QFLAGS += -machine lm3s811evb

include ../../rule.mk
