#include <stdbool.h>
#include "i2c.h"
#include "i2cm_gpio.h"

void i2c_delay_half(struct i2c_gpio_algo *algo)
{
    algo->udelay((algo->delay_us + 1) >> 1);
}
void i2c_delay(struct i2c_gpio_algo *algo)
{
    algo->udelay(algo->delay_us);
}

#define i2c_setsda(algo, val) algo->setsda(algo->data, val)
#define i2c_setscl(algo, val) algo->setscl(algo->data, val)
#define i2c_getsda(algo) algo->getsda(algo->data)
#define i2c_getscl(algo) algo->getscl(algo->data)
#define i2c_udelay(algo, us) algo->udelay(us)

#define i2c_sda_low(algo) i2c_setsda(algo, 0)
#define i2c_sda_high(algo) i2c_setsda(algo, 1)
#define i2c_scl_low(algo) i2c_setscl(algo, 0)

/*
 * Raise scl line, and do checking for delays. This is necessary for slower
 * devices.
 */
static int i2c_scl_high(struct i2c_gpio_algo *algo)
{
    unsigned long start;

    i2c_setscl(algo, 1);

    /* Not all adapters have scl sense line... */
    if (!algo->getscl)
        goto done;

    // start = jiffies;
    while (!i2c_getscl(algo)) {
        /* This hw knows how to read the clock line, so we wait
         * until it actually gets high.  This is safer as some
         * chips may hold it low ("clock stretching") while they
         * are processing data internally.
         */
        // if (time_after(jiffies, start + adap->timeout))
        //  return -ETIMEDOUT;
    }
#ifdef DEBUG
    if (jiffies != start && i2c_debug >= 3)
        pr_debug("i2c-algo-bit: needed %ld jiffies for SCL to go "
                 "high\n",
                 jiffies - start);
#endif

done:
    i2c_delay_half(algo);
    return 0;
}

/* --- other auxiliary functions -------------------------------------- */
static void i2c_start(struct i2c_gpio_algo *algo)
{
#ifdef DEBUG
    if (algo->getscl && !i2c_getsda(algo)) {
        printf("I2C bus error, SCL line low\n");
    }
    if (algo->getsda && !i2c_getsda(algo)) {
        printf("I2C bus error, SDA line low\n");
    }
#endif
    /* assert: scl, sda are high */
    i2c_sda_low(algo);
    i2c_delay(algo);
    i2c_scl_low(algo);
    i2c_delay_half(algo);
}

static void i2c_repstart(struct i2c_gpio_algo *algo)
{
#ifdef DEBUG
    if (algo->getscl && i2c_getsda(algo)) {
        printf("I2C bus error, SCL line high\n");
    }
    if (algo->getsda && i2c_getsda(algo)) {
        printf("I2C bus error, SDA line high\n");
    }
#endif
    /* assert: scl is low */
    i2c_sda_high(algo);
    i2c_scl_high(algo);
    i2c_delay_half(algo);
    i2c_sda_low(algo);
    i2c_delay_half(algo);
    i2c_scl_low(algo);
}

bool i2c_waitack(struct i2c_gpio_algo *algo)
{
    bool ack;

    i2c_sda_high(algo);
    i2c_delay_half(algo);

    if (i2c_scl_high(algo) < 0) {
        printf("wait ack timeout\n");

        return -1; //timeout
    }

    ack = !i2c_getsda(algo); /* ACK : SDA pin is pulled low */
    printf("%s\n", ack ? "ACK" : "NACK");

    i2c_scl_low(algo);

    return ack;
}

static void i2c_stop(struct i2c_gpio_algo *algo)
{
    /* assert: scl is low */
    i2c_sda_low(algo);
    i2c_delay_half(algo);
    i2c_scl_high(algo);
    i2c_delay_half(algo);
    i2c_sda_high(algo);
    i2c_delay(algo);
}

/* send a byte without start cond., look for arbitration,
   check ackn. from slave */
/* returns:
 * 1 if the device acknowledged
 * 0 if the device did not ack
 * -ETIMEDOUT if an error occurred (while raising the scl line)
 */
static int i2c_send_byte(struct i2c_bus *bus, unsigned char data)
{
    int i;
    int bit;
    int ack;
    struct i2c_gpio_algo *algo = bus->private;

    /* assert: scl is low */
    for (i = 7; i >= 0; i--) {
        // i2c_scl_low(algo); //TODO: should it be set to low here?
        bit = (data >> i) & 1;
        i2c_setsda(algo, bit);
        i2c_delay_half(algo);
        if (i2c_scl_high(algo) < 0) {
            /* timed out */
            // printf("i2c_send_byte: 0x%02x, "
            //  "timeout at bit #%d\n", (int)c, i);
            return -1;
        }
        /* FIXME do arbitration here:
         * if (sb && !getsda(adap)) -> ouch! Get out of here.
         *
         * Report a unique code, so higher level code can retry
         * the whole (combined) message and *NOT* issue STOP.
         */
        i2c_scl_low(algo);
    }
    i2c_delay_half(algo); //?

    i2c_sda_high(algo);
    if (i2c_scl_high(algo) < 0) {
        /* timeout */
        printf("i2c_send_byte: 0x%02x, timeout at ack\n", (int)data);
        return -1;
    }

    /* read ack: SDA should be pulled down by slave, or it may
     * NAK (usually to report problems with the data we wrote).
     */
    ack = !i2c_getsda(algo); /* ack: sda is pulled low -> success */
    printf("i2c_send_byte: 0x%02x %s\n", (int)data, ack ? "ACK" : "NACK");

    i2c_scl_low(algo);
    return ack;
    /* assert: scl is low (sda undef) */
}

static int i2c_recv_byte(struct i2c_bus *bus)
{
    /* read byte via i2c port, without start/stop sequence  */
    /* acknowledge is sent in i2c_read.         */
    int i;
    unsigned char data = 0;
    struct i2c_gpio_algo *algo = bus->private;

    /* assert: scl is low */
    i2c_sda_high(algo);
    for (i = 0; i < 8; i++) {
        if (i2c_scl_high(algo) < 0) {
            /* timeout */
            printf("i2c_recv_byte: timeout at bit #%d\n", 7 - i);
            return -1;
        }
        data <<= 1;
        if (i2c_getsda(algo))
            data |= 0x01;
        i2c_scl_low(algo);
        i2c_udelay(algo, i == 7 ? algo->delay_us / 2 : algo->delay_us);
    }
    /* assert: scl is low */
    return data;
}

/*
 * Sanity check for the adapter hardware - check the reaction of
 * the bus lines only if it seems to be idle.
 */
static int test_bus(struct i2c_gpio_algo *algo, char *name)
{
    int scl, sda;

    if (algo->getscl == NULL)
        printf("%s: Testing SDA only, SCL is not readable\n", name);

    sda = i2c_getsda(algo);
    scl = (algo->getscl == NULL) ? 1 : i2c_getscl(algo);
    if (!scl || !sda) {
        printf("%s: bus seems to be busy\n", name);
        goto out;
    }

    i2c_sda_low(algo);
    sda = i2c_getsda(algo);
    scl = (algo->getscl == NULL) ? 1 : i2c_getscl(algo);
    if (sda) {
        printf("%s: SDA stuck high!\n", name);
        goto out;
    }
    if (!scl) {
        printf("%s: SCL unexpected low "
               "while pulling SDA low!\n",
               name);
        goto out;
    }

    i2c_sda_high(algo);
    sda = i2c_getsda(algo);
    scl = (algo->getscl == NULL) ? 1 : i2c_getscl(algo);
    if (!sda) {
        printf("%s: SDA stuck low!\n", name);
        goto out;
    }
    if (!scl) {
        printf("%s: SCL unexpected low "
               "while pulling SDA high!\n",
               name);
        goto out;
    }

    i2c_scl_low(algo);
    sda = i2c_getsda(algo);
    scl = (algo->getscl == NULL) ? 0 : i2c_getscl(algo);
    if (scl) {
        printf("%s: SCL stuck high!\n", name);
        goto out;
    }
    if (!sda) {
        printf("%s: SDA unexpected low "
               "while pulling SCL low!\n",
               name);
        goto out;
    }

    i2c_scl_high(algo);
    sda = i2c_getsda(algo);
    scl = (algo->getscl == NULL) ? 1 : i2c_getscl(algo);
    if (!scl) {
        printf("%s: SCL stuck low!\n", name);
        goto out;
    }
    if (!sda) {
        printf("%s: SDA unexpected low "
               "while pulling SCL high!\n",
               name);
        goto out;
    }
    printf("%s: Test OK\n", name);
    return 0;
out:
    i2c_sda_high(algo);
    i2c_scl_high(algo);
    return -2;
}

/* ----- Utility functions
 */

static int i2c_send_bytes(struct i2c_bus *bus, struct i2c_msg *msg)
{
    const unsigned char *ptr = msg->buf;
    int count = msg->len;
    unsigned short ignore_nack = msg->flags & I2C_M_IGNORE_NAK;
    int retval;
    int wrcount = 0;

    while (count > 0) {
        retval = i2c_send_byte(bus, *ptr);

        /* OK/ACK; or ignored NAK */
        if ((retval > 0) || (ignore_nack && (retval == 0))) {
            count--;
            ptr++;
            wrcount++;

            /* A slave NAKing the master means the slave didn't like
             * something about the data it saw.  For example, maybe
             * the SMBus PEC was wrong.
             */
        } else if (retval == 0) {
            printf("sendbytes: NAK out.\n");
            return 0;

            /* Timeout; or (someday) lost arbitration
             *
             * FIXME Lost ARB implies retrying the transaction from
             * the first message, after the "winning" master issues
             * its STOP.  As a rule, upper layer code has no reason
             * to know or care about this ... it is *NOT* an error.
             */
        } else {
            printf("sendbytes: error %d\n",
                   retval);
            return retval;
        }
    }
    return wrcount;
}

static int i2c_send_ack_or_nack(struct i2c_bus *bus, int is_ack)
{
    struct i2c_gpio_algo *algo = bus->private;

    /* assert: sda is high */
    if (is_ack) /* send ack */
        i2c_setsda(algo, 0);
    i2c_delay_half(algo);
    if (i2c_scl_high(adap) < 0) {
        /* timeout */
        printf("readbytes: ack/nak timeout\n");
        return -1;
    }
    i2c_scl_low(algo);
    return 0;
}

static int i2c_recv_bytes(struct i2c_bus *bus, struct i2c_msg *msg)
{
    int inval;
    int rdcount = 0; /* counts bytes read */
    unsigned char *ptr = msg->buf;
    int count = msg->len;
    const unsigned flags = msg->flags;

    while (count > 0) {
        inval = i2c_read_byte(bus);
        if (inval >= 0) {
            *ptr = inval;
            rdcount++;
        } else {
            /* read timed out */
            break;
        }

        ptr++;
        count--;

        printf("i2c_recv_bytes: 0x%02x %s\n",
                inval,
                (flags & I2C_M_NO_RD_ACK)
                ? "(no ack/nack)"
                : (count ? "ACK" : "NACK"));

        if (!(flags & I2C_M_NO_RD_ACK)) {
            inval = i2c_send_ack_or_nack(bus, count);
            if (inval < 0)
                return inval;
        }
    }
    return rdcount;
}

/* try_address tries to contact a chip for a number of
 * times before it gives up.
 * return values:
 * 1 chip answered
 * 0 chip did not answer
 * -x transmission error
 */
static int i2c_try_address(struct i2c_bus *bus,
                       unsigned char addr, int retries)
{
    struct i2c_gpio_algo *algo = bus->private;
    int i, ret = 0;

    for (i = 0; i <= retries; i++) {
        ret = i2c_send_byte(bus, addr);
        if (ret == 1 || i == retries)
            break;
        printf("send stop condition\n");
        i2c_stop(algo);
        i2c_delay(algo);
        printf("send start condition\n");
        i2c_start(algo);
    }
    if (i && ret)
        printf("Used %d tries to %s client at "
               "0x%02x: %s\n",
               i + 1,
               addr & 1 ? "read from" : "write to", addr >> 1,
               ret == 1 ? "success" : "failed, timeout?");
    return ret;
}

/* doAddress initiates the transfer by generating the start condition (in
 * try_address) and transmits the address in the necessary format to handle
 * reads, writes as well as 10bit-addresses.
 * returns:
 *  0 everything went okay, the chip ack'ed, or IGNORE_NAK flag was set
 * -x an error occurred (like: -EREMOTEIO if the device did not answer, or
 *  -ETIMEDOUT, for example if the lines are stuck...)
 */
static int i2c_send_address(struct i2c_bus *bus, struct i2c_msg *msg)
{
    unsigned short flags = msg->flags;
    unsigned short ignore_nack = msg->flags & I2C_M_IGNORE_NAK;
    struct i2c_gpio_algo *algo = bus->private;

    unsigned char addr;
    int ret, retries;

    retries = ignore_nack ? 0 : bus->retries;

    if (flags & I2C_M_TEN) {
        /* a ten bit address */
        addr = 0xf0 | ((msg->addr >> 7) & 0x03);//0xf0 | ((msg->addr >> 7) & 0x06);??
        printf("addr0: %d\n", addr);
        /* try extended address code...*/
        ret = i2c_try_address(bus, addr, retries);
        if ((ret != 1) && !ignore_nack) {
            printf("died at extended address code\n");
            return -EREMOTEIO;
        }
        /* the remaining 8 bit address */
        ret = i2c_send_byte(bus, msg->addr & 0x7f);//msg->addr & 0xff??
        if ((ret != 1) && !ignore_nack) {
            /* the chip did not ack / xmission error occurred */
            printf("died at 2nd address code\n");
            return -EREMOTEIO;
        }
        if (flags & I2C_M_RD) {
            printf("send repeated start condition\n");
            i2c_repstart(adap);
            /* okay, now switch into reading mode */
            addr |= 0x01;
            ret = i2c_try_address(bus, addr, retries);
            if ((ret != 1) && !ignore_nack) {
                printf("died at repeated address code\n");
                return -EREMOTEIO;
            }
        }
    } else {
        /* normal 7bit address  */
        addr = msg->addr << 1;
        if (flags & I2C_M_RD)
            addr |= 1;
        if (flags & I2C_M_REV_DIR_ADDR)
            addr ^= 1;
        ret = i2c_try_address(bus, addr, retries);
        if ((ret != 1) && !ignore_nack)
            return -ENXIO;
    }

    return 0;
}

static int i2c_gpio_xfer(struct i2c_bus *bus,
                    struct i2c_msg msgs[], int num)
{
    struct i2c_msg *msg;
    struct i2c_gpio_algo *algo = bus->private;
    int i, ret;
    unsigned short ignore_nack;

    printf("send start condition\n");
    i2c_start(algo);
    for (i = 0; i < num; i++) {
        msg = &msgs[i];
        ignore_nack = msg->flags & I2C_M_IGNORE_NAK;
        if (!(msg->flags & I2C_M_NOSTART)) {
            if (i) {
                printf("send repeated start condition\n");
                i2c_repstart(algo);
            }
            ret = i2c_send_address(bus, msg);
            if ((ret != 0) && !ignore_nack) {
                printf("NAK from device addr 0x%02x msg #%d\n", msgs[i].addr, i);
                goto out;
            }
        }
        if (msg->flags & I2C_M_RD) {
            /* read bytes into buffer*/
            ret = i2c_recv_bytes(bus, msg);
            if (ret >= 1)
                printf("read %d byte%s\n", ret, ret == 1 ? "" : "s");
            if (ret < msg->len) {
                if (ret >= 0)
                    ret = -EREMOTEIO;
                goto out;
            }
        } else {
            /* write bytes from buffer */
            ret = i2c_send_bytes(bus, msg);
            if (ret >= 1)
                printf("wrote %d byte%s\n", ret, ret == 1 ? "" : "s");
            if (ret < msg->len) {
                if (ret >= 0)
                    ret = -EREMOTEIO;
                goto out;
            }
        }
    }
    ret = i;

out:
    printf("send stop condition\n");
    i2c_stop(algo);
    return ret;
}

static const struct i2c_bus_operations i2c_bus_gpio_ops = {
    .master_xfer = i2c_gpio_xfer,
};
