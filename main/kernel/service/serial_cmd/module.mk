# UART DMA IDLE Protocol Module Configuration

# 基础路径
PROTOCOL_DIR = kernel/service/serial_cmd

# UART DMA IDLE模块
SRC += $(PROTOCOL_DIR)/src/serial_protocol.c
SRC += $(PROTOCOL_DIR)/src/modules/led_module.c
SRC += $(PROTOCOL_DIR)/src/modules/stepper_module.c
SRC += $(PROTOCOL_DIR)/src/modules/system_module.c
CFLAGS += -I$(SDKPATH)/$(PROTOCOL_DIR)/inc
CFLAGS += -I$(SDKPATH)/$(PROTOCOL_DIR)/modules
CFLAGS += -DSERIAL_CMD_ENABLE
