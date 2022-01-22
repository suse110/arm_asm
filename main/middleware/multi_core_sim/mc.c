
#include "mt_ringbuffer.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/sysinfo.h>
#include <sys/mman.h>
#include <sys/stat.h>
#define __USE_GNU
#include <sched.h>
#include <ctype.h>
#include <pthread.h>
#include <assert.h>
#include <signal.h>
#include <fcntl.h>
#include "sim_uart.h"
#include <hexdump.h>

void uart_isr_callback(int event, void *arg)
{
    struct sim_uart *su = (struct sim_uart *)arg;
    char buff[128];
    uint32_t read_bytes;
    uint32_t write_bytes;
    switch(event) {
    case SIM_UART_EVENT_REDY_TO_READ :
        printf("[%s] recv SIM_UART_EVENT_REDY_TO_READ\n", __func__);
        read_bytes = ringbuffer_read(&su->rxbuf, buff, sizeof(buff));
        if (read_bytes > 0) {
            hexdump(buff, read_bytes);
        } else {
            printf("[%s] recv SIM_UART_EVENT_REDY_TO_READ, but no data can be read\n", __func__);
        }
        break;
    case SIM_UART_EVENT_REDY_TO_WRITE:
        printf("[%s] recv SIM_UART_EVENT_REDY_TO_WRITE\n", __func__);
        char buff[32];
        for (uint32_t i = 0; i< sizeof(buff); i++) {
            buff[i] = i;
        }
        write_bytes = ringbuffer_write(&su->txbuf, buff, sizeof(buff));
        if (write_bytes > 0) {
            printf("[%s] wirte_bytes=%d\n", __func__, write_bytes);
        } else {
            printf("[%s] buff full\n", __func__);
        }
        break;
    default:
        printf("error event:%d\n", event);
    }
}
struct sim_uart sim_uart;
int main(int argc, char const *argv[])
{
    if (argc != 2){
        printf("argc count must be 2:\n");
        printf(" eg: %s [0|1]\n", argv[0]);
        exit(0);
    }
    printf("__SIGRTMIN=%d SIGRTMIN=%d SIGRTMAX=%d\n", __SIGRTMIN, SIGRTMIN, SIGRTMAX);
    
    printf("system has %ld processor(s). \n", sysconf(_SC_NPROCESSORS_CONF));//获取核数
    sim_uart_init(&sim_uart, 1024*1024, 1024*1024, *argv[1] - 0x30, uart_isr_callback);
    while (1) sleep(10);
    sim_uart_deinit(&sim_uart);
    printf("exit\n");
    return 0;
}
