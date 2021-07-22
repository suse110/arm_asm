EXEC = test

SOURCE_DIR = .

SRC = $(EXEC).s $(EXEC).c
LINKSCRIPT = $(EXEC).ld
GDBINIT = ../gdbinit
CFLAGS += -Idrivers/chip/lm3s811/inc -Idrivers/CMSIS/Include

include drivers/chip/lm3s811/module.mk

include ../rule.mk
