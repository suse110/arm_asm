#ifndef __SW_SPI_MASTER_H__
#define __SW_SPI_MASTER_H__
#include <stdint.h>

/**********************************/
static inline void delay_us(uint32_t t) {
    uint32_t i=1000;
    for (; i > 0; i--) {
        for (; t > 0; t--) {

        }
    }
}
#include "stm32f4xx_hal_conf.h"
#define GPIO_SET_VAL(pin, val) HAL_GPIO_WritePin(GPIOB, pin, val)
#define GPIO_GET_VAL(pin) HAL_GPIO_ReadPin(GPIOB, pin)
#define SPIM_DELAY(x)       delay_us(x)
#define SPIM_GPIO_CS        GPIO_PIN_10  
#define SPIM_GPIO_SCK       GPIO_PIN_4
#define SPIM_GPIO_MOSI      GPIO_PIN_5
#define SPIM_GPIO_MISO      GPIO_PIN_3
#define SPIM_GPIO_SIO0    
#define SPIM_GPIO_SIO1    
#define SPIM_GPIO_SIO2    
#define SPIM_GPIO_SIO3    
/**********************************/
#define SPIM_NO_PIN -1

#define SPIM_MODE_CPHA      0x1
#define SPIM_MODE_CPOL      0x2
#define SPIM_MODE_CS_HIGH   0x4
#define SPIM_MODE_LSB_FIRST 0x8
#define SPIM_MODE_NO_CS     0x10

#define SPIM_MODE_SINGLE_MASK  0x10
#define SPIM_MODE_3WIRE_MASK   0x20
#define SPIM_MODE_DUAL_MASK    0x40
#define SPIM_MODE_QUAD_MASK    0x60

typedef struct {
    int cs;
    int sck;
    int mosi;
    int miso;
    int sio0;
    int sio1;
    int sio2;
    int sio3;
} spim_pins_t;

typedef struct spi_master {
    uint32_t mode;
    spim_pins_t pins;
    uint32_t dummy_bits;
    uint32_t command_bytes;
    void * private;
} spi_master_t;

struct spi_transfer {
	const void	*tx_buf;
	void		*rx_buf;
	uint32_t	len;
	unsigned	cs_change:1;
	uint16_t	delay_usecs;
} spi_transfer_t;

void spim_test(void);

#endif // __SW_SPI_MASTER_H__
