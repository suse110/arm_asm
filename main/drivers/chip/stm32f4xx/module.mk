
CHIP_DIR = drivers/chip/stm32f4xx

SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_adc.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_nand.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_adc_ex.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_nor.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_can.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_pccard.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_cortex.c
# SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_pcd.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_crc.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_pwr.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_cryp.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_pwr_ex.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_cryp_ex.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rcc.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dac.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rcc_ex.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dac_ex.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rng.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dcmi.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rtc.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dma.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rtc_ex.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dma2d.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_sai.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dma_ex.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_sd.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_eth.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_sdram.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_flash.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_smartcard.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_flash_ex.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_spi.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_gpio.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_sram.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_hash.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_tim.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_hash_ex.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_tim_ex.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_hcd.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_uart.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2c.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_usart.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2c_ex.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_wwdg.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2s.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_ll_fmc.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2s_ex.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_ll_fsmc.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_irda.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_ll_sdmmc.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_iwdg.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_ll_usb.c
SRC += $(CHIP_DIR)/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_ltdc.c

CFLAGS += -I$(SDKPATH)/drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/inc

CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Include
CFLAGS += -DHAL_DRIVER_ENABLE


