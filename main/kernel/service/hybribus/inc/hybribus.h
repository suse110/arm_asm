#ifndef __HYBRIBUS_H__
#define __HYBRIBUS_H__

#include <sdint.h>
/*


*/
#define HB_ASSERT(cond) if (!cond) {printf("[%s]:%d assert fail\r\n", __FUNC__, __LINE__);}
typedef enum {
    HB_OK = 0,
    HB_EAGAIN = -1,
    HB_EOPNOTSUPP = -2,
} hybribus_status_t;

typedef hybribus_status_t int;

typedef enum {
    HB_USB,
    HB_UART,
    HB_SPI,
    HB_I2C,
    HB_I3C,
    HB_I2S,
} hybribus_type_t;

typedef struct hybribus_device hb_device_t;

struct list_head {
	struct list_head *next, *prev;
};
struct slist_head {
	struct slist_head *next;
};

#define LIST_HEAD_INIT(name) { &(name), &(name) }

#define LIST_HEAD(name) \
	struct list_head name = LIST_HEAD_INIT(name)

//hybribus 所有总线(挂在hybribus上的总线也可以看做是它的设备)的列表
static struct hb_list_node hb_dev_lists;


#if 0
typedef struct hybribus_device
{
    int  (*init)   (hb_device_t* dev);
    int  (*open)   (hb_device_t* dev, uint16_t oflag);
    int  (*close)  (hb_device_t* dev);
    uint32_t (*read)   (hb_device_t* dev, uint32_t position, void *buffer, uint32_t size);
    uint32_t (*write)  (hb_device_t* dev, uint32_t position, const void *buffer, uint32_t size);
    int  (*control)(hb_device_t* dev, int cmd, void *args);
} hybribus_device_ops_t;
#else
typedef struct hybribus_device
{
    int  (*init)   (hb_device_t* dev);
    int  (*open)   (hb_device_t* dev, uint16_t oflag);
    int  (*close)  (hb_device_t* dev);
    uint32_t (*read)   (hb_device_t* dev, uint32_t position, void *buffer, uint32_t size);
    uint32_t (*write)  (hb_device_t* dev, uint32_t position, const void *buffer, uint32_t size);
    int  (*control)(hb_device_t* dev, int cmd, void *args);
} hybribus_device_ops_t;
#endif
typedef hybribus_device_ops_t file_ops_t;
typedef struct {
    void *user_data;
    char *name;
    hybribus_device_ops_t *ops;
    struct list_head  entry;
} hhybribus_device_t;          
typedef enum {
    HB_UART_0,
    HB_UART_1,
    HB_PORT_MAX,
} hb_port_t;
typedef struct {
    uint32_t txbuf_len;
    uint32_t rxbuf_len;
    uint8_t *txbuf;
    uint8_t *rxbuf;
    struct {
        uint16_t buadrate;
        uint8_t parity;
        uint8_t stop_bits;
        uint8_t data_bits;
    } uart;
} hb_port_setting_t;
typedef struct {
    uint8_t *buf;
    uint32_t len;
} hb_buffer_t;

typedef int hb_handle_t;
typedef struct {
    uint32_t (*tx_paraser)(hb_handle_t handle, hb_buffer_t *buffer, uint32_t buffer_count, hb_buffer_t *head, hb_bufer_t *tail, void *args);
    uint32_t (*rx_paraser)(hb_handle_t *handle, hb_buffer_t *buffer, uint32_t buffer_count, uint32_t *drop_len, uint32_t *recv_len, void *args);
} hb_paraser_t;
typedef struct {
    HB_EVENT_READ,
    HB_EVENT_WRITE,
} hb_event_t;

#define HB_OPEN_WITH_FIFO_FLAG 0x1

#define	O_RDONLY	0		/* +1 == FREAD */
#define	O_WRONLY	1		/* +1 == FWRITE */
#define	O_RDWR		2		/* +1 == FREAD|FWRITE */

typedef void (*hb_callback_t)(hb_handle handle, hb_event_t event, uint32_t data_len, void *args);

int hb_init(hb_port_t port, hb_port_setting_t *setting, hb_paraser_t * paraser);
hb_handle_t hb_open(hb_port_t port, const char *name, hb_callback_t callback, void *args);
int hb_close(hb_handle_t handle);
int hb_read(hb_handle_t handle, hb_buffer_t *buffer, uint32_t *buffer_count);
int hb_write(hb_handle_t handle, hb_buffer_t *buffer, uint32_t buffer_count);

int sys_open(const char *filename, uint32_t flags, uint32_t mode);
ssize_t sys_read(int fd, void *buf, size_t count);
ssize_t sys_write(int fd, const void *buf, size_t count);
int sys_ioctl(int fd, unsigned int cmd, unsigned long arg);
int sys_close(int fd);
int sys_driver_register(const char *filename, const file_ops_t *ops);
int sys_driver_unregister(const char *filename);

/*
hybribus 是一个支持多总线的虚拟混合总线，一条总线表示一个物理上的线路
比如：支持SPI/I2C/UART/USB 等设备

可以有多个I2C总线，
    I2C 总线上可以挂多个device，device既可以是master也可以是slave
可以有多个SPI总线，
    SPI 总线上可以挂多个slave/ 
那么。哪个设备挂在哪个总线上怎么知道呢？
1. 设备总线上应该有它挂载设备的列表，一个链表链接挂在总线上的所有设备
2. 设备中也要知道自己挂在到了哪条总线
3. hybribus 上需要知道总线上有哪些设备总线
总线提供一套通用的操作接口，
4. 支持同步异步传输，异步传输时，底层上报event，上层可以注册callback处理，也可以在rtos环境下阻塞线程等待event
5. 支持设备总线透传，比如spi转i2c，uart等接口
6. 支持posix接口
*/
#endif // __HYBRIBUS_H__
