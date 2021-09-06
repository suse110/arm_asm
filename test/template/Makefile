EXEC = main


SOURCE_DIR = ../..

SDK_PATH = $(abspath $(shell pwd))/$(SOURCE_DIR)

APP_PATH=test/template

BUILD_DIR=./build

ASM_SRC = $(APP_PATH)/test.s 
SRC = $(APP_PATH)/main.c

LINKSCRIPT = test.ld
GDBINIT = gdbinit

#use stdlib
NOSTDLIB_ENABLE = y

CFLAGS += -march=armv7-m 
CFLAGS += -mcpu=cortex-m3
CFLAGS += -mfloat-abi=soft

QFLAGS += -machine lm3s811evb

include ../../rule.mk
