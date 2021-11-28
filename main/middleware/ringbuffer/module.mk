# FIFO_DIR=middleware/rinbgbuffer
FIFO_DIR=.

SRC += $(FIFO_DIR)/ringbuffer.c
SRC += $(FIFO_DIR)/test.c

CFLAGS += -I$(SDKPATH)/$(FIFO_DIR)
