# FIFO_DIR=middleware/fifo
FIFO_DIR=.

SRC += $(FIFO_DIR)/menu.c
SRC += $(FIFO_DIR)/test.c

CFLAGS += -I$(SDKPATH)/$(FIFO_DIR)
