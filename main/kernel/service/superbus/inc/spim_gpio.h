#ifndef __SPIM_GPIO_H__
#define __SPIM_GPIO_H__
#include <stdint.h>
#include "spim_config.h"


static inline void delay_us(uint32_t t) {
    uint32_t i=1000;
    for (; t > 0; t--)
        for (; i > 0; i--);
}
#ifndef SPIM_DELAY
#define SPIM_DELAY(x)       delay_us(x)
#endif

#define SPIM_NO_PIN -1

#define SPIM_MODE_CPHA      0x1
#define SPIM_MODE_CPOL      0x2
#define SPIM_MODE_CS_HIGH   0x4
#define SPIM_MODE_LSB_FIRST 0x8
#define SPIM_MODE_NO_CS     0x10

typedef struct spim_dev {
    uint32_t mode;
    spi_pins_t pins;
    void * private;
} spim_dev_t;

struct spi_transfer {
	const void	*txbuf;
	void		*rxbuf;
	uint32_t	len;
	unsigned	cs_change:1;
	uint16_t	delay_usecs;
} spi_transfer_t;

void spim_test(void);
void spim_init(struct spim_dev *spi, uint32_t mode, spi_pins_t *pins);
uint32_t spim_duplex_transfer(struct spim_dev *spi, struct spi_transfer *trans);
uint32_t spim_send(struct spim_dev *spi, uint8_t *data, uint32_t len);
uint32_t spim_recv(struct spim_dev *spi, uint8_t *data, uint32_t len);
uint32_t spim_send_recv(struct spim_dev *spi, uint8_t *txdata, uint8_t *rxdata, uint32_t len);
uint32_t spim_send_then_recv(struct spim_dev *spi, uint8_t *txdata, uint32_t txlen, uint8_t *rxdata, uint32_t rxlen);

#endif // __SPIM_GPIO_H__
