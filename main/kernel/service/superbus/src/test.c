#include "spim_gpio.h"

spi_pins_t pins = {
	.cs = SPIM_GPIO_CS,
	.sck = SPIM_GPIO_SCK,
	.mosi = SPIM_GPIO_MOSI,
	.miso = SPIM_GPIO_MISO,
};

#define TRANS_BUFFER_SIZE 64
uint8_t txbuf[TRANS_BUFFER_SIZE];
uint8_t rxbuf[TRANS_BUFFER_SIZE];

void spim_test(void)
{
	struct spim_dev spi;

	for (int i=0;i <TRANS_BUFFER_SIZE; i++) {
		txbuf[i] = i;
	}
	memset(txbuf, 0x55, TRANS_BUFFER_SIZE);
	memset(rxbuf, 0x00, TRANS_BUFFER_SIZE);
	spim_init(&spi, 3, &pins);//SPIM_MODE_LSB_FIRST
	
    spim_send(&spi, txbuf, TRANS_BUFFER_SIZE);
    SPIM_DELAY(2000);
    spim_recv(&spi, rxbuf, TRANS_BUFFER_SIZE);
    SPIM_DELAY(2000);
    spim_send_recv(&spi, txbuf, rxbuf, TRANS_BUFFER_SIZE);
    SPIM_DELAY(2000);
    spim_send_then_recv(&spi, txbuf, TRANS_BUFFER_SIZE, rxbuf, TRANS_BUFFER_SIZE);

}
