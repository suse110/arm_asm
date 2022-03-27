/*

|
1. 两个进程通过用虚拟串口通信
2. 两个进程分别通过虚拟串口与串口工具通信
3. 

VS : virtual serial port

                *---*---*                       *---*---*
                |   PC  |                       |   PC   |
                *---*---*                       *---*---*
                    ^                               ^
                    | VS                            | VS
       MCU1         |                   MCU2        |
     ---------------V-------------    --------------V----------------                              
     |          *---*---*        |    |         *---*---*           |    
     |     -----|Core A1|<------ |    | ------> |Core B1|-----      |        
     |     |    *---*---*      | |    | |       *---*---*    |      |        
     |     |        ^          | |    | |           ^        |      |        
     |     |        |          v | VS | v           |        |      |        
     |  signal share memory    ==|====|==      share memory signal  |            
     |     |        |          ^ |    | ^           |        |      |        
     |     |        v          | |    | |           v        |      |        
     |     |    *---*---*      | |    | |       *---*---*    |      |        
     |     ---->|Core A2|<------ |    | ------->|Core B2|<----      |            
     |          *---*---*        |    |         *---*---*           |    
     ---------------^-------------    --------------^----------------                            
                    |                               |
                    | VS                            | VS
                    v                               v
                *---*---*                       *---*---*
                |   PC  |                       |   PC  |
                *---*---*                       *---*---*


    

*/
/*
1. 把从串口收到的数据放入各个core的 tx buffer
2. 把从rx buffer 收到的数据从串口吐出来
*/
#ifdef __cplusplus
extern "C" {
#endif

#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <string.h>
#if defined(linux) || defined(__CYGWIN__)
#include <sys/types.h>
#include <sys/sysinfo.h>
#include <unistd.h>
#define __USE_GNU
#include <sched.h>
#include <ctype.h>
#include <signal.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#endif

#include "mt_ringbuffer.h"
#include "serial.h"
#include "ser_bridge.h"
#include "hexdump.h"
#if defined(linux) || defined(__CYGWIN__)
#include <pthread.h>
#endif

void * ser_bridge_tx_thread(void *arg)
{
    struct serial_bridge *sb = (struct serial_bridge *)arg;
    // pthread_mutex_tyrlock(&serial_bridge->mutex);
    printf("[%s]\n", __func__);
    uint8_t buf[512];
    uint32_t read_bytes;
    uint32_t write_bytes;
    while (1) {
        read_bytes = ringbuffer_read(sb->rxbuf, buf, sizeof(buf));
        if (read_bytes > 0) {
            write_bytes = serial_write(&sb->ser, buf, read_bytes);
            if (write_bytes <= 0) {
                perror("write fail\n");                                                                                                                                       
            }
        } else {
            usleep(10000);
        }
    }

}
void * ser_bridge_rx_thread(void *arg)
{
    struct serial_bridge *sb = (struct serial_bridge *)arg;
    // pthread_mutex_tyrlock(&serial_bridge->mutex);
    printf("[%s]\n", __func__);
    uint8_t buf[512];
    uint32_t read_bytes;
    uint32_t write_bytes;
    while (1) {
        read_bytes = serial_read(&sb->ser, buf, read_bytes, 1000000);
        if (read_bytes > 0) {
            printf("[%s] dev %s recv %d bytes, write to txbuff[0x%lx]\n",
                __func__, sb->ser.port, read_bytes, (uintptr_t)sb->txbuf);
            write_bytes = ringbuffer_write(sb->txbuf, buf, sizeof(buf));
            if (write_bytes <= 0) {
                perror("write fail\n");                                                                                                                                       
            }
        } else {
            usleep(10000);
        }
    }

}

bool ser_bridge_init(struct serial_bridge *sb, const char *dev, uint32_t bps, ringbuffer_t *txbuf, ringbuffer_t *rxbuf)
{
    
    serial_init(&sb->ser, dev, bps);
    if (serial_open(&sb->ser) < 0) {
        printf("open %s fail\n", dev);
        perror("");
        exit(0);
    }
    sb->rxbuf = rxbuf;
    sb->txbuf = txbuf;
    serial_clear(&sb->ser);
    pthread_mutex_init(&sb->mutex, NULL);
    pthread_attr_init(&sb->attr);
    // PTHREAD_CREATE_DETACHED（分离的）和PTHREAD_CREATE_JOINABLE（可合并的，也是默认属性）
    pthread_attr_setdetachstate(&sb->attr, PTHREAD_CREATE_DETACHED);
    // 有三个取值：SCHED_RR（轮询）、SCHED_FIFO（先进先出）和SCHED_OTHER
    pthread_attr_setschedpolicy(&sb->attr, SCHED_RR);
    // pthread_create(&sb->tx_thread, &sb->attr, ser_bridge_tx_thread, sb);
    pthread_create(&sb->rx_thread, &sb->attr, ser_bridge_rx_thread, sb);
    return true;
}

void ser_bridge_deinit(struct serial_bridge *sb)
{
    pthread_attr_destroy(&sb->attr);
    serial_close(&sb->ser);
}