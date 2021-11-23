#ifndef __I2C_H__
#define __I2C_H__
#include <stdint.h>
#include "hybribus.h"

/*
I2C 通信过程设计到
0. I2C总线，总线上可以挂载多个I2C设备,设备可以是master或者slave
    
1. I2C 控制器，master:提供I2C时序，slave：被动的硬件slave，有设备属性
    需要提供传输函数
2. I2C 设备，有地址

*/
#define I2C_M_TEN 0x0010
#define I2C_M_RD 0x0001
#define I2C_M_NOSTART 0x4000
#define I2C_M_REV_DIR_ADDR 0x2000
#define I2C_M_IGNORE_NAK 0x1000
#define I2C_M_NO_RD_ACK 0x0800
#define I2C_M_RECV_LEN 0x0400 /* length will be first received byte */

#define I2C_NAME_SIZE 32
struct i2c_bus_operations;
struct i2c_bus;
struct i2c_device;
struct i2c_driver;

struct i2c_msg
{
    uint16_t addr;
    uint16_t flags;
    uint16_t len;
    uint8_t *buf;
};

struct i2c_bus
{
    struct hb_device parent;
    const struct i2c_bus_operations *ops; /* the algorithm to access the bus */
    void *private;
    int timeout; /* in jiffies */
    int retries;
    struct i2c_device *owner;
};

struct i2c_device
{
    struct hb_device parent;
    unsigned short flags;
    unsigned short addr;
    char name[I2C_NAME_SIZE];
    struct i2c_bus *bus;
    struct i2c_driver *driver;
    int irq;
    struct list_head detected;
};

struct i2c_driver
{
    char *name;
    int (*init)(struct i2c_device *);
    int (*deinit)(struct i2c_device *);
}

struct i2c_bus_operations
{
    int (*master_xfer)(struct i2c_bus *bus, struct i2c_msg *msgs, int num);
    int (*slave_xfer)(struct i2c_bus *bus, struct i2c_msg *msgs, int num);
    int (*bus_control)(struct i2c_bus *bus, uint32_t cmd, uint32_t args);
};

#endif // __I2C_H__
