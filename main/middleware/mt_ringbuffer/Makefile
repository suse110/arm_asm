CFLAGS += -I../../kernel/service/lite_printf
CFLAGS += -I../../kernel/third/unit-test/cutest/
CFLAGS += -Wno-unused-function
CFLAGS += -Wno-unused-but-set-variable
CFLAGS += -Wno-unused-variable

SRC += ../../kernel/third/unit-test/cutest/CuTest.c
SRC += mt_ringbuffer.c 
SRC += test.c

all:
	gcc $(CFLAGS) -g -Wall -std=gnu99 $(SRC) -o rbtest  
.PHONY:
clean:
	rm rbtest