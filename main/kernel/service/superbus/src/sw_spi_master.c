#include "sw_spi_master.h"

static inline void spim_set_sck(const struct spi_master *spi, int val)
{
	GPIO_SET_VAL(spi->pins.sck, val);
}

static void spim_set_cs(struct spi_master *spi, int active)
{
	int cs = spi->pins.cs;

	/* set initial clock polarity */
	if (active)
		spim_set_sck(spi, spi->mode & SPIM_MODE_CPOL);

	if (cs != SPIM_NO_PIN) {
		/* SPI is normally active-low */
		GPIO_SET_VAL(cs, (spi->mode & SPIM_MODE_CS_HIGH) ? active : !active);
	}
}


static inline void spim_set_mosi(const struct spi_master *spi, int val)
{
	GPIO_SET_VAL(spi->pins.mosi, !!val);
}

static inline int spim_get_miso(const struct spi_master *spi)
{
	return !!GPIO_GET_VAL(spi->pins.miso);
}

static inline void spim_set_sio0(const struct spi_master *spi, int val)
{
	GPIO_SET_VAL(spi->pins.sio0, val);
}
static inline void spim_set_sio1(const struct spi_master *spi, int val)
{
	GPIO_SET_VAL(spi->pins.sio1, val);
}
static inline void spim_set_sio2(const struct spi_master *spi, int val)
{
	GPIO_SET_VAL(spi->pins.sio2, val);
}
static inline void spim_set_sio3(const struct spi_master *spi, int val)
{
	GPIO_SET_VAL(spi->pins.sio3, val);
}

static inline int spim_get_sio0(const struct spi_master *spi)
{
	return !!GPIO_GET_VAL(spi->pins.sio0);
}
static inline int spim_get_sio1(const struct spi_master *spi)
{
	return !!GPIO_GET_VAL(spi->pins.sio1);
}
static inline int spim_get_sio2(const struct spi_master *spi)
{
	return !!GPIO_GET_VAL(spi->pins.sio2);
}
static inline int spim_get_sio3(const struct spi_master *spi)
{
	return !!GPIO_GET_VAL(spi->pins.sio3);
}

static inline uint32_t spim_xfer_cpha0_msb(struct spi_master *spi,
    unsigned nsecs, unsigned cpol, uint32_t word, uint8_t bits)
{
	/* if (cpol == 0) this is SPI_MODE_0; else this is SPI_MODE_2 */

	/* clock starts at inactive polarity */
	for (word <<= (32 - bits); bits; bits--) {

		/* setup MSB (to slave) on trailing edge */
		spim_set_mosi(spi, word & (1 << 31));
		SPIM_DELAY(nsecs);	/* T(setup) */

		spim_set_sck(spi, !cpol);
		SPIM_DELAY(nsecs);

		/* sample MSB (from slave) on leading edge */
		word <<= 1;
		word |= spim_get_miso(spi);
		spim_set_sck(spi, cpol);
	}
	return word;
}

static inline uint32_t spim_xfer_cpha1_msb(struct spi_master *spi,
    unsigned nsecs, unsigned cpol, uint32_t word, uint8_t bits)
{
	/* if (cpol == 0) this is SPI_MODE_1; else this is SPI_MODE_3 */

	/* clock starts at inactive polarity */
	for (word <<= (32 - bits); bits; bits--) {

		/* setup MSB (to slave) on leading edge */
		spim_set_sck(spi, !cpol);
		spim_set_mosi(spi, word & (1 << 31));
		SPIM_DELAY(nsecs); /* T(setup) */

		spim_set_sck(spi, cpol);
		SPIM_DELAY(nsecs);

		/* sample MSB (from slave) on trailing edge */
		word <<= 1;
		word |= spim_get_miso(spi);
	}
	return word;
}

static inline uint32_t spim_xfer_cpha0_lsb(struct spi_master *spi,
    unsigned nsecs, unsigned cpol, uint32_t word, uint8_t bits)
{
	/* if (cpol == 0) this is SPI_MODE_0; else this is SPI_MODE_2 */
    uint32_t __bits = bits;
	/* clock starts at inactive polarity */
	for (; bits; bits--) {

		/* setup LSB (to slave) on trailing edge */
		spim_set_mosi(spi, word & 1);
		SPIM_DELAY(nsecs);	/* T(setup) */

		spim_set_sck(spi, !cpol);
		SPIM_DELAY(nsecs);

		/* sample LSB (from slave) on leading edge */
		word >>= 1;
		word |= spim_get_miso(spi) << 31;
		spim_set_sck(spi, cpol);
	}
	return word >> (32 - __bits);
}

static inline uint32_t spim_xfer_cpha1_lsb(struct spi_master *spi,
    unsigned nsecs, unsigned cpol, uint32_t word, uint8_t bits)
{
	/* if (cpol == 0) this is SPI_MODE_1; else this is SPI_MODE_3 */
    uint32_t __bits = bits;
	/* clock starts at inactive polarity */
	for (; bits; bits--) {

		/* setup LSB (to slave) on leading edge */
		spim_set_sck(spi, !cpol);
		spim_set_mosi(spi, word & (1 << 31));
		SPIM_DELAY(nsecs); /* T(setup) */

		spim_set_sck(spi, cpol);
		SPIM_DELAY(nsecs);

		/* sample LSB (from slave) on trailing edge */
		word >>= 1;
		word |= spim_get_miso(spi) << 31;
	}
	return word >> (32 - __bits);
}

typedef uint32_t (*spim_xfer_t)(struct spi_master *spi,
    unsigned nsecs, uint32_t word, uint8_t bits);

uint32_t spim_xfer_mode0_msb(struct spi_master *spi, unsigned nsecs, uint32_t word, uint8_t bits)
{
    return spim_xfer_cpha0_msb(spi, nsecs, 0, word, bits);
}
uint32_t spim_xfer_mode1_msb(struct spi_master *spi, unsigned nsecs, uint32_t word, uint8_t bits)
{
    return spim_xfer_cpha0_msb(spi, nsecs, 1, word, bits);
}
uint32_t spim_xfer_mode2_msb(struct spi_master *spi, unsigned nsecs, uint32_t word, uint8_t bits)
{
    return spim_xfer_cpha1_msb(spi, nsecs, 0, word, bits);
}
uint32_t spim_xfer_mode3_msb(struct spi_master *spi, unsigned nsecs, uint32_t word, uint8_t bits)
{
    return spim_xfer_cpha1_msb(spi, nsecs, 1, word, bits);
}
uint32_t spim_xfer_mode0_lsb(struct spi_master *spi, unsigned nsecs, uint32_t word, uint8_t bits)
{
    return spim_xfer_cpha0_lsb(spi, nsecs, 0, word, bits);
}
uint32_t spim_xfer_mode1_lsb(struct spi_master *spi, unsigned nsecs, uint32_t word, uint8_t bits)
{
    return spim_xfer_cpha0_lsb(spi, nsecs, 1, word, bits);
}
uint32_t spim_xfer_mode2_lsb(struct spi_master *spi, unsigned nsecs, uint32_t word, uint8_t bits)
{
    return spim_xfer_cpha1_lsb(spi, nsecs, 0, word, bits);
}
uint32_t spim_xfer_mode3_lsb(struct spi_master *spi, unsigned nsecs, uint32_t word, uint8_t bits)
{
    return spim_xfer_cpha1_lsb(spi, nsecs, 1, word, bits);
}

spim_xfer_t spim_xfer[4][2] = {
    {spim_xfer_mode0_lsb, spim_xfer_mode0_msb},
    {spim_xfer_mode1_lsb, spim_xfer_mode1_msb},
    {spim_xfer_mode2_lsb, spim_xfer_mode2_msb},
    {spim_xfer_mode3_lsb, spim_xfer_mode3_msb},
};

void spim_init(struct spi_master *spi, uint32_t mode, spim_pins_t *pins)
{
	spi->mode = mode;
	memcpy(&spi->pins, pins, sizeof(spim_pins_t));
}

uint32_t spim_transfer(struct spi_master *spi, struct spi_transfer *trans)
{
	printf("[%s]\r\n", __func__);
	spim_xfer_t xfer;
	uint32_t i = 0;
	uint8_t *tx_buf = trans->tx_buf;
	uint8_t *rx_buf = trans->rx_buf;
	xfer = spim_xfer[spi->mode & (SPIM_MODE_CPHA|SPIM_MODE_CPOL)][spi->mode&SPIM_MODE_LSB_FIRST?0:1];
	spim_set_cs(spi, 1);
	for (i = 0; i < trans->len; i++) {
		rx_buf[i] = xfer(spi, trans->delay_usecs, tx_buf[i], 8);
	}
	if (trans->cs_change) {
		spim_set_cs(spi, 0);
	}
	return trans->len;
}
spim_pins_t pins = {
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
	struct spi_master spi;
	struct spi_transfer trans;
	uint32_t trans_len = TRANS_BUFFER_SIZE;
	for (int i=0;i <TRANS_BUFFER_SIZE; i++) {
		txbuf[i] = i;
	}
	memset(txbuf, 0x55, TRANS_BUFFER_SIZE);
	memset(rxbuf, 0x00, TRANS_BUFFER_SIZE);
	spim_init(&spi, 2, &pins);//SPIM_MODE_LSB_FIRST
	trans.cs_change = 1;
	trans.delay_usecs = 100;
	trans.len = trans_len;
	trans.rx_buf = rxbuf;
	trans.tx_buf = txbuf;
	while (1){
		spim_transfer(&spi, &trans);
		SPIM_DELAY(2000);
	}
	
}