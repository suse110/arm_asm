#include "hybribus.h"
#include "mt_ringbuffer.h"
typedef struct {
    hb_port_setting_t portsetting;
    ringbuffer_t txbuf;
    ringbuffer_t rxbuf;
    hb_paraser_t paraser;
} hb_port_config_t;
typedef struct {
    ringbuffer_t txbuf;
    ringbuffer_t rxbuf;
    const char *uname;
    hb_callback_t callback;
    void *args;
} hb_user_config_t;

#define HB_USER_MAX 10
hb_port_setting_t hb_port_setting[HB_PORT_MAX];
hb_port_config_t hb_port_config[HB_PORT_MAX];

hb_user_config_t hb_user_config[HB_USER_MAX];

int hb_init(hb_port_t port, hb_port_setting_t *port_setting, hb_paraser_t * paraser)
{
    hb_port_config_t *port_config = &hb_port_config[port];
    if (port_setting->txbuf) {
        ringbuffer_init(&port_config->txbuf, port_setting->txbuf, port_setting->txbuf_len);
    } else {
        ringbuffer_alloc(&port_config->txbuf, port_setting->txbuf_len);
    }
    if (port_setting->rxbuf) {
        ringbuffer_init(&port_config->rxbuf, port_setting->rxbuf, port_setting->rxbuf_len);
    } else {
        ringbuffer_alloc(&port_config->rxbuf, port_setting->rxbuf_len);
    }
    memcpy(&port_config->portsetting, port_config, sizeof(hb_port_setting_t));
    memcpy(&port_config->paraser, paraser, sizeof(hb_paraser_t));
    //TODO: device init
    return HB_OK;
}
typedef struct {
    uint32_t txbuf_len;
    uint32_t rxbuf_len;
    uint8_t *txbuf;
    uint8_t *rxbuf;
} hb_user_setting_t;

int hb_open(hb_port_r port, const char *name, hb_handle_t *handle, hb_callback_t callback, uint32_t flags, hb_user_setting_t *user_setting, void *args)
{
    hb_user_config_t *user_config;

    uint32_t uid;

    for (uid = 0; uid < HB_USER_MAX; uid++) {
        if (hb_user_config[uid].uname == NULL) {
            break;
        }
    }
    user_config = &hb_user_config[uid];

    if ((flags & HB_OPEN_WITH_FIFO_FLAG) && user_setting) {
        if (user_setting->txbuf) {
            ringbuffer_init(&user_config->txbuf, user_setting->txbuf, user_setting->txbuf_len);
        } else {
            ringbuffer_alloc(&user_config->txbuf, user_setting->txbuf_len);
        }
        if (user_setting->rxbuf) {
            ringbuffer_init(&user_config->rxbuf, user_setting->rxbuf, user_setting->rxbuf_len);
        } else {
            ringbuffer_alloc(&user_config->rxbuf, user_setting->rxbuf_len);
        }
    }
    *handle = (port << 4) | uid;
    user_config->callback = callback;
    user_config->args = args;
    return HB_OK;
}

int hb_close(hb_handle_t handle)
{
    hb_user_config_t *user_config;
    uint32_t uid = 0xf & handle;

    user_config = &hb_user_config[uid];
    memset(user_config, 0, sizeof(hb_user_config_t));
    return HB_OK;
}

int hb_read(hb_handle_t handle, mux_buffet_t *buffer, uint32_t *buffer_count)
{

    return HB_OK;
}
int hb_write(hb_handle_t handle, mux_buffet_t *buffer, uint32_t buffer_count, uint32_t *send_done_len)
{

    return HB_OK;
}

static LIST_HEAD(hb_device_head);

int sys_open(const char *filename, uint32_t flags, uint32_t mode)
{

    return 0;
}
ssize_t sys_read(int fd, void *buf, size_t count)
{

    return 0;
}
ssize_t sys_write(int fd, const void *buf, size_t count)
{

    return 0;
}
int sys_ioctl(int fd, unsigned int cmd, unsigned long arg)
{

    return 0;
}
int sys_close(int fd)
{

    return 0;
}

int sys_driver_register(const char *filename, const file_ops_t *ops)
{
    hhybribus_device_t * hhybribus_device;

    hhybribus_device = malloc(sizeof(hhybribus_device_t));
    hhybribus_device->ops = ops;
    hhybribus_device->name = strdup(filename);
    list_add_head(&hhybribus_device->entry, &hb_device_head);
    return 0;
}
int sys_driver_unregister(const char *filename)
{


    return 0;
}
