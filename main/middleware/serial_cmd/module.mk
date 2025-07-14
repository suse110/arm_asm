# UART DMA IDLE Protocol Module Configuration

# 基础路径
PROTOCOL_DIR = middleware/serial_cmd

# UART DMA IDLE模块
SRC += $(PROTOCOL_DIR)/src/serial_protocol.c
SRC += $(PROTOCOL_DIR)/src/modules/cmd_led.c
SRC += $(PROTOCOL_DIR)/src/modules/cmd_stepper.c
SRC += $(PROTOCOL_DIR)/src/modules/cmd_system.c
SRC += $(PROTOCOL_DIR)/src/modules/cmd_memory.c
CFLAGS += -I$(SDKPATH)/$(PROTOCOL_DIR)/inc
CFLAGS += -I$(SDKPATH)/$(PROTOCOL_DIR)/modules/inc
