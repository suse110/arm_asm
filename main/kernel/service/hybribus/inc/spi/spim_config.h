#ifndef __SPI_MASTER_CONFIG_H__
#define __SPI_MASTER_CONFIG_H__
#include "stm32f4xx_hal_conf.h"
#define GPIO_SET_VAL(pin, val) HAL_GPIO_WritePin(GPIOB, pin, val)
#define GPIO_GET_VAL(pin) HAL_GPIO_ReadPin(GPIOB, pin)
#define SPIM_GPIO_CS        GPIO_PIN_10  
#define SPIM_GPIO_SCK       GPIO_PIN_4
#define SPIM_GPIO_MOSI      GPIO_PIN_5
#define SPIM_GPIO_MISO      GPIO_PIN_3
#define SPIM_GPIO_SIO0    
#define SPIM_GPIO_SIO1    
#define SPIM_GPIO_SIO2    
#define SPIM_GPIO_SIO3    
/**********************************/


typedef struct {
    int cs0;
    int cs1;
    int cs2;
    int cs3;
    int sck;
    int mosi;
    int miso;
    int sio0;
    int sio1;
    int sio2;
    int sio3;
} spi_pins_t;


#endif // __SPI_MASTER_CONFIG_H__
