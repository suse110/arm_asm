EXEC = test

BUILD_DIR = ./build

ASMSRC = $(EXEC).s 
SRC = $(EXEC).c
LINKSCRIPT = $(EXEC).ld
GDBINIT = ../gdbinit

#use stdlib
NOSTDLIB_ENABLE = y

CFLAGS += -march=armv7-m 
CFLAGS += -mcpu=cortex-m3
CFLAGS += -mfloat-abi=soft

QFLAGS += -machine lm3s811evb

include ../rule.mk
