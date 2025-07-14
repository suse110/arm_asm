BOARD_DIR = drivers/bsp/board/$(BOARD_TYPE)

include $(SDKPATH)/$(BOARD_DIR)/key/module.mk
include $(SDKPATH)/$(BOARD_DIR)/led/module.mk