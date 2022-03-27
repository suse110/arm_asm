#ifdef __cplusplus
extern "C" {
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/sysinfo.h>
#include <sys/mman.h>
#include <sys/stat.h>
#define __USE_GNU
// #define _GNU_SOURCE
// #undef __GNU_VISIBLE
// #define __GNU_VISIBLE 1
// #include <sys/cpuset.h>

#include <sched.h>
#include <ctype.h>
#include <pthread.h>
#include <assert.h>
#include <signal.h>
#include <fcntl.h>
#include "mt_ringbuffer.h"
#include "sim_uart.h"
#include "serial.h"
#include "hexdump.h"

struct sim_uart sim_uart;
void hb_callback(uint32_t port, int event, void *arg)
{
    printf("[%s]\n", __func__);
}
bool parase_package(ringbuffer_t *rb, char *buffer, uint32_t length, char *uid, uint32_t *datalen, uint32_t *parase_done_length)
{
    uint8_t *pbuf = buffer;
    uint8_t head;
    uint32_t buf_size = length;
    uint32_t pkg_len;
    uint32_t pkg_len_need_to_recv;
    char id;
    typedef enum {
        HB_DATA_HEAD_STATE,
        HB_DATA_ID_STATE,
        HB_DATA_LOW_LENGTH_STATE,
        HB_DATA_HIGH_LENGTH_STATE,
        HB_DATA_PAYLOAD_STATE,
    } data_parase_state_t;

    static data_parase_state_t data_parase_state = HB_DATA_HEAD_STATE;

    for (;buf_size;) {
        switch (data_parase_state) {
        case HB_DATA_HEAD_STATE:
            head = *pbuf;
            buf_size--;
            if (*pbuf++ != 0x5A) {
                printf("[%s] [%d] state=HEAD, HEAD=0x%02x, ERROR!!!\n", __func__, HB_DATA_HEAD_STATE, head);
                continue;
            }
            data_parase_state = HB_DATA_ID_STATE;
            break;
        case HB_DATA_ID_STATE:
            buf_size--;
            *uid = *pbuf++;
            data_parase_state = HB_DATA_LOW_LENGTH_STATE;
            printf("[%s] [%d] state=ID, uid=0x%02x\n", __func__, HB_DATA_ID_STATE, *uid);
            break;
        case HB_DATA_LOW_LENGTH_STATE:
            buf_size--;
            pkg_len = *pbuf++;
            data_parase_state = HB_DATA_HIGH_LENGTH_STATE;
            printf("[%s] [%d] state=LENL, len=0x%04x\n", __func__, HB_DATA_LOW_LENGTH_STATE, pkg_len);
            break;
        case HB_DATA_HIGH_LENGTH_STATE:
            buf_size--;
            pkg_len |= ((*pbuf++) << 8);
            data_parase_state = HB_DATA_PAYLOAD_STATE;
            pkg_len_need_to_recv = pkg_len;
            printf("[%s] [%d] state=LENH, len=0x%04x\n", __func__, HB_DATA_HIGH_LENGTH_STATE, pkg_len);

            break;
        case HB_DATA_PAYLOAD_STATE:
            if (pkg_len_need_to_recv <= buf_size) {
                printf("[%s] [%d] 1 state=PAYLOAD, pkg_len_need_to_recv=%d, buf_size=%d\n", __func__, HB_DATA_PAYLOAD_STATE, pkg_len_need_to_recv, buf_size);
                if (pkg_len_need_to_recv != ringbuffer_write(rb, pbuf, pkg_len_need_to_recv)) {
                    assert(0);
                }

                buf_size -= pkg_len_need_to_recv;
                pbuf += pkg_len_need_to_recv;
                printf("[%s] write to rxbuf[0x%lx] %d bytes\n", __func__, (uintptr_t)rb, pkg_len_need_to_recv);
                data_parase_state = HB_DATA_HEAD_STATE;
                *datalen = pkg_len_need_to_recv;
                *parase_done_length = pkg_len_need_to_recv;
                pkg_len_need_to_recv = 0;
                return true;
            } else {
                printf("[%s] [%d] 2 state=PAYLOAD, pkg_len_need_to_recv=%d, buf_size=%d\n", __func__, HB_DATA_PAYLOAD_STATE, pkg_len_need_to_recv, buf_size);
                //没有足够payload，先收一部分
                if (buf_size != ringbuffer_write(rb, pbuf, buf_size)) {
                    assert(0);
                }
                pkg_len_need_to_recv -= buf_size;
                buf_size = 0;
                *parase_done_length += buf_size;
                return false;
            }
            break;
        }
    }
    return true;
}
typedef struct {
    uint8_t *buffer;
    uint32_t buf_len;
} hb_buffer_t;
#define get_time_elapse(start_count)

void * hb_uart_tx_task(void *args)
{
    serial_t *ser;
    char uid;
    #define HB_USER_TXBUF_SIZE 2048
    uint8_t buff[HB_USER_TXBUF_SIZE];
    hb_buffer_t buffer;
    uint32_t send_done_len;
    uint32_t recv_done_len;
    uint32_t parase_done_len;
    uint32_t rb_data_bytes;
    int read_bytes;
    ringbuffer_t rb;
    ringbuffer_alloc(&rb, 2048);
    printf("[%s]\n", __func__);

    ser = (serial_t*)args;

    while (1) {
        read_bytes = serial_read(ser, buff, sizeof(buff), 1000000);
        if (read_bytes < 0) {
            printf("[%s] timeout\n", __func__);
            continue;
        }
        recv_done_len = 0;
        parase_done_len = 0;
        do {
            if (!parase_package(&rb, &buff[parase_done_len], read_bytes - parase_done_len, &uid, &recv_done_len, &parase_done_len)) {
                break;
            }
            parase_done_len = parase_done_len + 4;
            printf("[%s] uid=%d read_bytes=%d recv_done_len=%d arase_done_len=%d",\
                __func__, uid, read_bytes, recv_done_len, parase_done_len);
            rb_data_bytes = ringbuffer_read(&rb, buff, sizeof(buff));
            // hb_write()
        } while(parase_done_len < read_bytes);
    } 
}
/*
pts 0 3
pts 4 5
pts 6 7
*/
ringbuffer_t tx_ringbuf;
ringbuffer_t rx_ringbuf;
__attribute__((align(2048))) uint8_t txbuffer[2048];
__attribute__((align(2048))) uint8_t rxbuffer[2048];
int main(int argc, char const *argv[])
{
    // if (argc != 3){
    //     printf("argc count must be 2:\n");
    //     printf(" eg: %s [0|1] [dev]\n", argv[0]);
    //     printf(" dev: /dev/ttySx\n");
    //     exit(0);
    // }

    printf("SIGRTMIN=%d SIGRTMAX=%d\n", SIGRTMIN, SIGRTMAX);
    
    printf("system has %ld processor(s). \n", sysconf(_SC_NPROCESSORS_CONF));//获取核数
    static serial_t ser;
    pthread_t tx_thread;
    uint32_t com_port;
    uint32_t uart_port;
    char *dev = NULL;
    //PC通过两组虚拟串口向两个进程发数据
    #if defined(COM_PORT_0)
    dev = "/dev/pts/4"; //pair 5
    com_port = 0;
    uart_port = 0;
    #else
    dev = "/dev/pts/6";//pair 7
    com_port = 1;
    uart_port = 1;
    #endif
    serial_init(&ser, dev, 921600);
    if (serial_open(&ser) < 0) {
        printf("[%s] open %s fail\n", __func__, dev);
        exit(0);
    }
    pthread_attr_t attr;
    pthread_attr_init(&attr);
    // PTHREAD_CREATE_DETACHED（分离的）和PTHREAD_CREATE_JOINABLE（可合并的，也是默认属性）
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
    // 有三个取值：SCHED_RR（轮询）、SCHED_FIFO（先进先出）和SCHED_OTHER
    pthread_attr_setschedpolicy(&attr, SCHED_RR);
    pthread_create(&tx_thread, &attr, hb_uart_tx_task, &ser);
    ringbuffer_init(&tx_ringbuf, txbuffer, sizeof(txbuffer));
    ringbuffer_init(&rx_ringbuf, rxbuffer, sizeof(rxbuffer));
    sim_uart_init(&sim_uart, &tx_ringbuf, &rx_ringbuf, uart_port, com_port, dev, hb_callback);
    while (1) sleep(10);
    sim_uart_deinit(&sim_uart);
    printf("exit\n");
    return 0;
}

#ifdef __cplusplus
}
#endif
