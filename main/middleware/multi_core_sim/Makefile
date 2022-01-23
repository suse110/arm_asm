CFLAGS += -I../mt_ringbuffer
CFLAGS += -I../../kernel/service/lite_printf
CFLAGS += -std=gnu99
CFLAGS += -ggdb3


SRC += ../mt_ringbuffer/mt_ringbuffer.c
SRC += ./mc.c
SRC += ./sim_uart.c
SRC += ./serial.c
SRC += ./ser_bridge.c
# SRC += ./test_cpu_cores.c
all:
	gcc $(CFLAGS) $(SRC) -lrt -pthread -o mc

.PHONY:
clean:
	rm -rf mc