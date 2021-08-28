EXEC = test

SRC = $(EXEC).s 
LINKSCRIPT = $(EXEC).ld
GDBINIT = ../../gdbinit
#use stdlib
NOSTDLIB_ENABLE = y

CFLAGS += -march=armv7-m 
CFLAGS += -mcpu=cortex-m3
CFLAGS += -mfloat-abi=soft

include ../../rule.mk
