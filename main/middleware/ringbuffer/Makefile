include module.mk

BUILD_DIR=$(shell pwd)

SRC += ../../kernel/third/unit-test/cutest/CuTest.c
CFLAGS += -I../../kernel/third/unit-test/cutest/

all:
	gcc  $(BUILD_DIR)/$(SRC) $(CFLAGS) -o ringbuffer


clean:
	rm ringbuffer