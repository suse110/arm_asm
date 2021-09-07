
CHIP_DIR = drivers/chip/stm32f4xx

SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_msp_template.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_adc.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_nand.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_adc_ex.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_nor.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_can.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_pccard.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_cortex.c
# SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_pcd.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_crc.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_pwr.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_cryp.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_pwr_ex.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_cryp_ex.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rcc.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dac.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rcc_ex.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dac_ex.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rng.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dcmi.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rtc.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dma.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rtc_ex.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dma2d.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_sai.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dma_ex.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_sd.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_eth.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_sdram.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_flash.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_smartcard.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_flash_ex.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_spi.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_gpio.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_sram.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_hash.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_tim.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_hash_ex.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_tim_ex.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_hcd.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_uart.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2c.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_usart.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2c_ex.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_wwdg.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2s.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_ll_fmc.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2s_ex.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_ll_fsmc.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_irda.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_ll_sdmmc.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_iwdg.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_ll_usb.c
SRC += $(SOURCE_DIR)/$(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_ltdc.c

SRC += $(SOURCE_DIR)/$(CHIP_DIR)/BSP/STM32F4xx-Nucleo/stm32f4xx_nucleo.c

CFLAGS += -I$(SOURCE_DIR)/drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/inc
CFLAGS += -I$(SOURCE_DIR)/drivers/chip/stm32f4xx/BSP/STM32F4xx-Nucleo
CFLAGS += -I$(SOURCE_DIR)/drivers/CMSIS/Include

CFLAGS += -ggdb
CFLAGS += -O0
CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -Warray-bounds
CFLAGS += -mcpu=cortex-m4
CFLAGS += -mthumb
CFLAGS += -mlittle-endian
CFLAGS += -mthumb-interwork
CFLAGS += -mfloat-abi=hard
CFLAGS += -mfpu=fpv4-sp-d16
CFLAGS += -DUSE_STDPERIPH_DRIVER
CFLAGS += -DSTM32F4XX
CFLAGS += -DSTM32F401xE


CFLAGS += -ffunction-sections
CFLAGS += -fdata-sections
CFLAGS += -Wl,--gc-sections
CFLAGS += -ffreestanding
CFLAGS += -Wno-unused-parameter
# CFLAGS += -mfloat-abi=soft

