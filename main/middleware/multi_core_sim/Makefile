CFLAGS += -I../mt_ringbuffer
CFLAGS += -I../../kernel/service/lite_printf
CFLAGS += -std=gnu99
CFLAGS += -ggdb3
CFLAGS += -m32
# CFLAGS += -lrt


SRC += ../mt_ringbuffer/mt_ringbuffer.c
SRC += ./mc.c
SRC += ./sim_uart.c
SRC += ./serial.c
SRC += ./ser_bridge.c
# SRC += ./test_cpu_cores.c

all: mca mcb

mca:
	gcc $(CFLAGS) $(SRC) -lrt -pthread -o mca -DCOM_PORT_0

mcb:
	gcc $(CFLAGS) $(SRC) -lrt -pthread -o mcb -DCOM_PORT_1

.PHONY:
clean:
	rm -rf mca mcb