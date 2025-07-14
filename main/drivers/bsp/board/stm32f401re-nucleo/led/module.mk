BASE_DIR = drivers/bsp/board/$(BOARD_TYPE)

SRC += $(BASE_DIR)/led/src/led.c
CFLAGS += -I$(SDKPATH)/$(BASE_DIR)/led/inc
