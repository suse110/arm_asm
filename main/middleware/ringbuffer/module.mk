# FIFO_DIR=middleware/ringbuffer
FIFO_DIR=.

SRC += $(FIFO_DIR)/ringbuffer.c
SRC += $(FIFO_DIR)/test.c

CFLAGS += -I$(SDKPATH)/$(FIFO_DIR)
