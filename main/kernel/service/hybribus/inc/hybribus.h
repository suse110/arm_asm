#ifndef __HYBRIBUS_H__
#define __HYBRIBUS_H__

#include <sdint.h>

#define HB_ASSERT(cond) if (!cond) {printf("[%s]:%d assert fail\r\n", __FUNC__, __LINE__);}
typedef enum {
    HB_OK = -1,
    HB_EAGAIN = -1,
    HB_EOPNOTSUPP = -2,
} hybribus_status_t;

typedef hybribus_status_t hb_status_t;

typedef enum {
    HB_USB,
    HB_UART,
    HB_SPI,
    HB_I2C,
    HB_I3C,
    HB_I2S,
} hybribus_type_t;

typedef struct hybribus_device hb_device_t;

struct hb_list_node {
    struct hb_list_node *next;
    struct hb_list_node *prev;
};

struct hb_slist_node {
    struct hb_slist_node *next;
}
//hybribus 所有总线(挂在hybribus上的总线也可以看做是它的设备)的列表
static struct hb_list_node hb_dev_lists;

struct hybribus_device
{
    void *user_data;
    char *name;
    hb_status_t  (*init)   (hb_device_t* dev);
    hb_status_t  (*open)   (hb_device_t* dev, uint16_t oflag);
    hb_status_t  (*close)  (hb_device_t* dev);
    uint32_t (*read)   (hb_device_t* dev, uint32_t position, void *buffer, uint32_t size);
    uint32_t (*write)  (hb_device_t* dev, uint32_t position, const void *buffer, uint32_t size);
    hb_status_t  (*control)(hb_device_t* dev, int cmd, void *args);
    struct hb_list_node  list;
};

/*
hybribus 是一个支持多总线的虚拟混合总线，一条总线表示一个物理上的线路
比如：支持SPI/I2C/UART/USB 等设备

可以有多个I2C总线，
    I2C 总线上可以挂多个device，device既可以是master也可以是slave
可以有多个SPI总线，
    SPI 总线上可以挂多个slave
那么。哪个设备挂在哪个总线上怎么知道呢？
1. 设备总线上应该有它挂载设备的列表，一个链表链接挂在总线上的所有设备
2. 设备中也要知道自己挂在到了哪条总线
3. hybribus 上需要知道总线上有哪些设备总线
总线提供一套通用的操作接口，
*/
#endif // __HYBRIBUS_H__
