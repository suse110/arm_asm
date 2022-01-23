#ifndef __SIM_UART_H__
#define __SIM_UART_H__
#ifdef __cplusplus
extern "C" {
#endif

#if defined(linux) || defined(__CYGWIN__)
#include <pthread.h>
#endif

#ifdef win32
#include <windows.h>
#endif

#include "mt_ringbuffer.h"
#include "ser_bridge.h"
typedef void (*uart_callback_t)(int event, void *arg);

#define SIM_UART_EVENT_REDY_TO_READ     1
#define SIM_UART_EVENT_REDY_TO_WRITE    2


struct sim_uart {
    ringbuffer_t txbuf;
    ringbuffer_t rxbuf;

    int tx_fd;
    int rx_fd;
    uint32_t com_port;
    pthread_attr_t attr;
    pthread_t tx_thread;
    pthread_t rx_thread;
    pthread_mutex_t mutex;
    pthread_mutex_t cond_wait_mutex;
    pthread_cond_t tx_data_ready;
    struct serial_bridge sb;
    int    shm_fd;
    int    shm_size;
    char   *shm_addr;
    uart_callback_t callback;
};
bool sim_uart_init(struct sim_uart *su, uint32_t txbuf_size, uint32_t rxbuf_size, uint32_t com_port, const char *dev, uart_callback_t callback);
bool sim_uart_deinit(struct sim_uart *su);

#ifdef __cplusplus
}
#endif
#endif // __SIM_UART_H__
