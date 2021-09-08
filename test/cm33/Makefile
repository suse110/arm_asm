EXEC = test

BUILD_DIR = ./build

SRC = $(EXEC).s 
LINKSCRIPT = $(EXEC).ld
GDBINIT = gdbinit

#use stdlib
NOSTDLIB_ENABLE = y

CFLAGS += -march=armv8-m.base
CFLAGS += -mcpu=cortex-m33
CFLAGS += -mfloat-abi=soft

QFLAGS += -machine mps2-an505

include ../rule.mk
