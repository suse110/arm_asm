MENU_DIR=middleware/menu
# MENU_DIR=.

SRC += $(MENU_DIR)/menu.c
SRC += $(MENU_DIR)/test.c

CFLAGS += -I$(SDKPATH)/$(MENU_DIR)
