EXEC = test

SOURCE_DIR = .
BUILD_DIR = ./build

SRC += ./app/$(EXEC).s 
SRC += ./app/$(EXEC).c

LINKSCRIPT = ./app/$(EXEC).ld
GDBINIT = ../gdbinit
CFLAGS += -Idrivers/chip/lm3s811/inc -Idrivers/CMSIS/Include

include drivers/chip/lm3s811/module.mk
include kernel/service/module.mk

include ../rule.mk
