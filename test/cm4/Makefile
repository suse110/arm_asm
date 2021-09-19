EXEC = test

BUILD_DIR=./build

SRC = $(EXEC).c
ASMSRC = start.s 
LINKSCRIPT = $(EXEC).ld
GDBINIT = ../gdbinit
#use stdlib
NOSTDLIB_ENABLE = y

# CFLAGS += -march=armv7-m 
CFLAGS += -mcpu=cortex-m4
CFLAGS += -mfloat-abi=soft

QFLAGS += -machine netduinoplus2

include ../rule.mk
