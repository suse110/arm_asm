EXEC = test

SOURCE_DIR = .
BUILD_DIR = ./build

SRC += ./app/$(EXEC).s 
SRC += ./app/$(EXEC).c

LINKSCRIPT = ./app/$(EXEC).ld
GDBINIT = ../gdbinit

include ./feature.mk

include drivers/chip/lm3s811/module.mk
include kernel/service/module.mk

include ../rule.mk
