#include "i2c_core.h"

/**
 * i2c_transfer - execute a single or combined I2C message
 * @bus: Handle to I2C bus
 * @msgs: One or more messages to execute before STOP is issued to
 *  terminate the operation; each message begins with a START.
 * @num: Number of messages to be executed.
 *
 * Returns negative errno, else the number of messages executed.
 *
 * Note that there is no requirement that each message be sent to
 * the same slave address, although that is the most common model.
 */
int i2c_transfer(struct i2c_bus *bus, struct i2c_msg *msgs, int num)
{
    unsigned long orig_jiffies;
    int ret, try;

    /* REVISIT the fault reporting model here is weak:
     *
     *  - When we get an error after receiving N bytes from a slave,
     *    there is no way to report "N".
     *
     *  - When we get a NAK after transmitting N bytes to a slave,
     *    there is no way to report "N" ... or to let the master
     *    continue executing the rest of this combined message, if
     *    that's the appropriate response.
     *
     *  - When for example "num" is two and we successfully complete
     *    the first message but get an error part way through the
     *    second, it's unclear whether that should be reported as
     *    one (discarding status on the second message) or errno
     *    (discarding status on the first one).
     */
    if (bus->ops->master_xfer) {
#ifdef DEBUG
        for (ret = 0; ret < num; ret++) {
            dev_dbg(&bus->dev, "master_xfer[%d] %c, addr=0x%02x, "
                    "len=%d%s\n", ret, (msgs[ret].flags & I2C_M_RD)
                    ? 'R' : 'W', msgs[ret].addr, msgs[ret].len,
                    (msgs[ret].flags & I2C_M_RECV_LEN) ? "+" : "");
        }
#endif


        for (ret = 0, try = 0; try <= bus->retries; try++) {
                        ret = bus->ops->master_xfer(bus, msgs, num);
                        if (ret != -EAGAIN)
                            break;
                        //TODO:process i2c timeout
                    }

        return ret;
    } else {
        dev_dbg(&bus->dev, "I2C level transfers not supported\n");
        return -EOPNOTSUPP;
    }
}



/**
 * i2c_master_send - issue a single I2C message in master transmit mode
 * @dev: Handle to slave device
 * @buf: Data that will be written to the slave
 * @count: How many bytes to write
 *
 * Returns negative errno, or else the number of bytes written.
 */
int i2c_master_send(hb_device_t *dev, const char *buf, int count)
{
    int ret;
    struct i2c_bus *bus = dev->bus;
    struct i2c_msg msg;

    msg.addr = dev->addr;
    msg.flags = dev->flags & I2C_M_TEN;
    msg.len = count;
    msg.buf = (char *)buf;

    ret = i2c_transfer(bus, &msg, 1);

    /* If everything went ok (i.e. 1 msg transmitted), return #bytes
       transmitted, else error code. */
    return (ret == 1) ? count : ret;
}


/**
 * i2c_master_recv - issue a single I2C message in master receive mode
 * @dev: Handle to slave device
 * @buf: Where to store data read from slave
 * @count: How many bytes to read
 *
 * Returns negative errno, or else the number of bytes read.
 */
int i2c_master_recv(hb_device_t *dev, char *buf, int count)
{
    struct i2c_bus *bus = dev->bus;
    struct i2c_msg msg;
    int ret;

    msg.addr = dev->addr;
    msg.flags = dev->flags & I2C_M_TEN;
    msg.flags |= I2C_M_RD;
    msg.len = count;
    msg.buf = buf;

    ret = i2c_transfer(bus, &msg, 1);

    /* If everything went ok (i.e. 1 msg transmitted), return #bytes
       transmitted, else error code. */
    return (ret == 1) ? count : ret;
}


static uint32_t i2c_bus_device_read(hb_device_t dev,
                                    void       *buffer,
                                    uint32_t   count)
{
    uint16_t addr;
    uint16_t flags;
    struct i2c_bus *bus = (struct i2c_bus *)dev->user_data;

    SB_ASSERT(bus != NULL);
    SB_ASSERT(buffer != NULL);

    printf("I2C bus dev [%s] reading %u bytes.\n", dev->parent.name, count);

    addr = pos & 0xffff;
    flags = (pos >> 16) & 0xffff;

    return rt_i2c_master_recv(bus, addr, flags, buffer, count);
}

static uint32_t i2c_bus_device_write(hb_device_t dev,
                                     const void *buffer,
                                     uint32_t   count)
{
    uint16_t addr;
    uint16_t flags;
    struct i2c_bus *bus = (struct i2c_bus *)dev->user_data;

    SB_ASSERT(bus != NULL);
    SB_ASSERT(buffer != NULL);

    printf("I2C bus dev [%s] writing %u bytes.\n", dev->parent.name, count);

    addr = pos & 0xffff;
    flags = (pos >> 16) & 0xffff;

    return rt_i2c_master_send(bus, addr, flags, buffer, count);
}

static rt_err_t i2c_bus_device_control(hb_device_t dev,
                                       int         cmd,
                                       void       *args)
{
    rt_err_t ret;
    struct rt_i2c_priv_data *priv_data;
    struct i2c_bus *bus = (struct i2c_bus *)dev->user_data;

    SB_ASSERT(bus != NULL);

    switch (cmd) {
    /* set 10-bit addr mode */
    case RT_I2C_DEV_CTRL_10BIT:
        bus->flags |= RT_I2C_ADDR_10BIT;
        break;
    case RT_I2C_DEV_CTRL_ADDR:
        bus->addr = *(uint16_t *)args;
        break;
    case RT_I2C_DEV_CTRL_TIMEOUT:
        bus->timeout = *(rt_uint32_t *)args;
        break;
    case RT_I2C_DEV_CTRL_RW:
        priv_data = (struct rt_i2c_priv_data *)args;
        ret = rt_i2c_transfer(bus, priv_data->msgs, priv_data->number);
        if (ret < 0) {
            return -RT_EIO;
        }
        break;
    default:
        break;
    }

    return RT_EOK;
}

rt_err_t rt_i2c_bus_device_device_init(struct i2c_bus *bus, const char *name)
{
    hb_device_t *device;
    SB_ASSERT(bus != NULL);

    device = &bus->parent;

    device->user_data = bus;

    /* initialize device interface */
    device->init    = NULL;
    device->open    = NULL;
    device->close   = NULL;
    device->read    = i2c_bus_device_read;
    device->write   = i2c_bus_device_write;
    device->control = i2c_bus_device_control;

    /* register to device manager */
    rt_device_register(device, name, RT_DEVICE_FLAG_RDWR);

    return RT_EOK;
}


#define I2C_BUS_MAX 100
static struct i2c_bus *__i2c_bus[I2C_BUS_MAX];
uint32_t i2c_bus_conunter = 0;

int i2c_bus_register(struct i2c_bus *bus, const char *name)
{
    if (bus->timeout == 0)
        bus->timeout = 100;

    memcpy(bus->name, name, strlen(name));
    __i2c_bus[i2c_bus_conunter++] = bus;
}