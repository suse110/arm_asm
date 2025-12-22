MEMFAULT_PORT_ROOT := kernel/third/memfault

MEMFAULT_SDK_ROOT := $(MEMFAULT_PORT_ROOT)/memfault-firmware-sdk
MEMFAULT_COMPONENTS := core util panics metrics
include $(SDKPATH)/$(MEMFAULT_SDK_ROOT)/makefiles/MemfaultWorker.mk

SRC += \
  $(MEMFAULT_COMPONENTS_SRCS) \
  $(MEMFAULT_PORT_ROOT)/memfault_platform_port.c \
  ${MEMFAULT_SDK_ROOT}/ports/stm32cube/f4/rcc_reboot_tracking.c \
  ${MEMFAULT_SDK_ROOT}/ports/stm32cube/f4/flash_coredump_storage.c \
  ${MEMFAULT_SDK_ROOT}/ports/freertos/src/memfault_core_freertos.c \
  ${MEMFAULT_SDK_ROOT}/ports/freertos/src/memfault_freertos_ram_regions.c \
  ${MEMFAULT_SDK_ROOT}/ports/freertos/src/memfault_metrics_freertos.c \
  ${MEMFAULT_SDK_ROOT}/ports/freertos/src/memfault_panics_freertos.c \
  ${MEMFAULT_SDK_ROOT}/ports/freertos/src/memfault_sdk_metrics_freertos.c \
  ${MEMFAULT_SDK_ROOT}/ports/freertos/src/memfault_sdk_metrics_thread.c \
  ${MEMFAULT_SDK_ROOT}/ports/freertos/src/memfault_self_test_platform.c

CFLAGS += -I$(MEMFAULT_COMPONENTS_INC_FOLDERS) \
  -I$(SDKPATH)/$(MEMFAULT_SDK_ROOT)/ports/include \
  -I$(SDKPATH)/$(MEMFAULT_PORT_ROOT) \
  -I$(SDKPATH)/${MEMFAULT_SDK_ROOT}/ports/freertos/config

CFLAGS += -DMEMFAULT_ENABLE
