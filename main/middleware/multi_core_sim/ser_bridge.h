#ifndef __SER_BRIDGE_H__
#define __SER_BRIDGE_H__
#include "serial.h"
struct serial_bridge {
    ringbuffer_t *txbuf;
    ringbuffer_t *rxbuf;

    pthread_attr_t attr;
    pthread_t tx_thread;
    pthread_t rx_thread;
    pthread_mutex_t mutex;

    serial_t ser;
};

void ser_bridge_deinit(struct serial_bridge *sb);
bool ser_bridge_init(struct serial_bridge *sb, const char *dev, uint32_t bps, ringbuffer_t *txbuf, ringbuffer_t *rxbuf);
#ifdef __cplusplus
}
#endif
#endif // __SER_BRIDGE_H__
