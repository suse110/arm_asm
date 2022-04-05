UTILITY_DIR=middleware/utility
# UTILITY_DIR=.

SRC += $(UTILITY_DIR)/src/crc8.c
SRC += $(UTILITY_DIR)/src/crc16.c
SRC += $(UTILITY_DIR)/src/crc32.c


CFLAGS += -I$(SDKPATH)/$(UTILITY_DIR)/inc
