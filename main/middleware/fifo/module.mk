# FIFO_DIR=middleware/fifo
FIFO_DIR=.

SRC += $(FIFO_DIR)/fifo.c
SRC += $(FIFO_DIR)/test.c

CFLAGS += -I$(SDKPATH)/$(FIFO_DIR)
