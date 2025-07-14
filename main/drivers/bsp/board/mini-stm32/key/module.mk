BASE_DIR = drivers/bsp/board/$(BOARD_TYPE)

SRC += $(BASE_DIR)/key/src/key.c
CFLAGS += -I$(SDKPATH)/$(BASE_DIR)/key/inc
