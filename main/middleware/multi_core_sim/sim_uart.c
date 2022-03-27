/*
1. mux 提供一套内存管理接口mbuf，user用这套接口来获取内存，user不用释放内存，由mux内部来释放
    最简单的就是user malloc的内存地址直接从mux tx传入
2. mux_tx 传到内部时，使用list fifo将这些内存块组织起来
3. mbuf 提供的内存为none-cachable的内存，可用dma搬运
4. user生产的数据直接放入mbuf
5. mbuf中的数据通过dma搬到uart vfifo
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

#ifdef win32
#endif

#include "sim_uart.h"
#include "ser_bridge.h"
#include "hexdump.h"

// share memory : https://blog.csdn.net/ababab12345/article/details/102931841
// thread : https://blog.csdn.net/networkhunter/article/details/100218945



static void sim_uart_isr(int signo, siginfo_t *info, void *content)
{

}


static struct sim_uart g_sim_uart;

void uart_isr_callback(int event, void *arg)
{
    struct sim_uart *su = (struct sim_uart *)arg;
    char buff[128];
    uint32_t read_bytes;
    uint32_t write_bytes;
    switch(event) {
    case SIM_UART_EVENT_REDY_TO_READ :
        printf("[%s] recv SIM_UART_EVENT_REDY_TO_READ\n", __func__);
        // su->hb_callback(su->uart_port, event, su);
        read_bytes = ringbuffer_read(su->rxbuf, buff, sizeof(buff));
        if (read_bytes > 0) {
            hexdump(buff, read_bytes);
        } else {
            printf("[%s] recv SIM_UART_EVENT_REDY_TO_READ, but no data can be read\n", __func__);
        }
        break;
    case SIM_UART_EVENT_REDY_TO_WRITE:
        printf("[%s] recv SIM_UART_EVENT_REDY_TO_WRITE\n", __func__);
        // su->hb_callback(su->uart_port, event, su);
        char buff[32];
        for (uint32_t i = 0; i< sizeof(buff); i++) {
            buff[i] = i;
        }
        write_bytes = ringbuffer_write(su->txbuf, buff, sizeof(buff));
        if (write_bytes > 0) {
            printf("[%s] wirte_bytes=%d\n", __func__, write_bytes);
        } else {
            printf("[%s] buff full, write_bytes=%d\n", __func__, write_bytes);
            ringbuffer_dump(su->txbuf, __func__);
        }
        break;
    default:
        printf("error event:%d\n", event);
    }
}
static void sim_isr(int signo)
{
    sim_uart_deinit(&g_sim_uart);
    printf("[%s]\n", __func__);
    exit(0);
}
static void sim_init_send(int signo)
{
    printf("[%s]\n", __func__);
    int write_bytes;
    char buff[32];
    for (uint32_t i = 0; i< sizeof(buff); i++) {
        buff[i] = i;
    }
    write_bytes = ringbuffer_write(g_sim_uart.txbuf, buff, sizeof(buff));
    if (write_bytes > 0) {
        printf("[%s] wirte_bytes=%d\n", __func__, write_bytes);
    } else {
        printf("[%s] buff full\n", __func__);
    }
}

#define MC_ASSERT(x) if (!x) {perror("assert:"); assert(x);}

void set_thread(int n, char *name)
{
#if !defined(__CYGWIN__)
    cpu_set_t mask;  //CPU核的集合
    cpu_set_t get;   //获取在集合中的CPU
    int core_number = n;
    CPU_ZERO(&mask);    //置空
    CPU_SET(core_number, &mask);  //设置亲和力值
    if (sched_setaffinity(0, sizeof(mask), &mask) == -1) { //设置线程CPU亲和力
        printf("warning: could not set CPU affinity, continuing...\n");
    }
    CPU_ZERO(&get);
    if (sched_getaffinity(0, sizeof(get), &get) == -1) { //获取线程CPU亲和力
        printf("warning: cound not get thread affinity, continuing...\n");
    }
    
    if (CPU_ISSET(core_number, &get)) { //判断线程与哪个CPU有亲和力
        printf("this thread %s is running processor : %d\n", name, core_number);
    } else {
        printf("this thread %s is bot running processor : %d\n", name, core_number);
    }
#endif
}

void * uart_tx_thread(void *arg)
{

    struct sim_uart *su = (struct sim_uart *)arg;
    // pthread_mutex_tyrlock(&sim_uart->mutex);
#ifdef SIM_UART_NAME_FIFO_ENABLE
    printf("[%s] fd=%d\n", __func__, su->rx_fd);
#else
    printf("[%s] fd=%d\n", __func__, su->dual_chip_ser.fd);
#endif
    char txbuff[1000];
    char rxbuff[100];
    int len;
    int write_bytes;
    uint32_t read_bytes;
    if (su->com_port == 0) {
        set_thread(0, "P0 TX");
    } else {
        set_thread(2, "P1 TX");
    }
    
    // sim_isr(0);
    while (1) {
        read_bytes = ringbuffer_read(su->txbuf, rxbuff, sizeof(rxbuff));
        if (read_bytes > 0) {
            printf("[%s] recv %d bytes from rxringbuf, serial write to dual_chip\n",\
            __func__, read_bytes);
#ifdef SIM_UART_NAME_FIFO_ENABLE
            write_bytes = write(su->tx_fd, rxbuff, read_bytes);
#else
            write_bytes = serial_write(&su->dual_chip_ser, rxbuff, read_bytes);
#endif
            if (write_bytes <= 0) {
                perror("write fail\n");
            }
        } else {
            pthread_mutex_lock(&su->mutex);
            if (su->uart_callback) {
                su->uart_callback(SIM_UART_EVENT_REDY_TO_WRITE, su);
            }
            pthread_mutex_unlock(&su->mutex);
            //等待ringbuffer write的signal
            // printf("wait signal\n");
            // pthread_mutex_lock(&su->cond_wait_mutex);
            // pthread_cond_wait(&su->tx_data_ready, &su->cond_wait_mutex);
            // pthread_mutex_unlock(&su->cond_wait_mutex);
            // printf("receive signal\n");
            sleep(1);
        }
    }
    return NULL;
}

void * uart_rx_thread(void *arg)
{
    char rxbuff[1000]; 
    int read_bytes;
    uint32_t write_bytes;
    struct sim_uart *su = (struct sim_uart *)arg;
#ifdef SIM_UART_NAME_FIFO_ENABLE
    printf("[%s] fd=%d\n", __func__, su->rx_fd);
#else
    printf("[%s] fd=%d\n", __func__, su->dual_chip_ser.fd);
#endif
    if (su->com_port == 0) {
        set_thread(1, "P0 RX");
    } else {
        set_thread(3, "P1 RX");
    }
    while (1) {
#ifdef SIM_UART_NAME_FIFO_ENABLE
        read_bytes = read(su->rx_fd, rxbuff, sizeof(rxbuff));
#else
        read_bytes = serial_read(&su->dual_chip_ser, rxbuff, sizeof(rxbuff), 1000000);
        printf("[%s] read dev %s %d bytes done\n", __func__, su->dual_chip_ser.port, read_bytes);
#endif
        if (read_bytes <= 0) {
            perror("read fail\n");
        } else {
            printf("[%s] dev %s recv %d bytes, write to rxbuf[0x%lx]\n",\
                 __func__, su->dual_chip_ser.port, read_bytes, (uintptr_t)su->rxbuf);
            write_bytes = ringbuffer_write(su->rxbuf, rxbuff, read_bytes);
            if (write_bytes == 0) {
                printf("fifo is full\n");
                sleep(1);
            } else {                                            
                pthread_mutex_lock(&su->mutex);
                if (su->uart_callback) {
                    su->uart_callback(SIM_UART_EVENT_REDY_TO_READ, su);
                }
                pthread_mutex_unlock(&su->mutex);

            }
        }
    }
    return NULL;
}

void tx_hook(void *arg)
{
    struct sim_uart *su = (struct sim_uart *)arg;

    pthread_cond_signal(&su->tx_data_ready);
}


bool sim_uart_init(struct sim_uart *su, ringbuffer_t *txbuf, ringbuffer_t *rxbuf, uint32_t uart_port, uint32_t com_port, const char *dev, hb_callback_t callback)
{
    MC_ASSERT(su);
    MC_ASSERT(com_port < 2);
    // struct sigaction act;
    memcpy(&g_sim_uart, su, sizeof(struct sim_uart));
#ifdef SHM_ENABLE
    su->shm_size = 1024*1024;
#endif
    su->com_port = com_port;
    su->com_port = uart_port;
    su->uart_callback = uart_isr_callback;
    su->hb_callback = callback;
    su->txbuf = txbuf;
    su->rxbuf = rxbuf;

    #define MC_CHECK_FD(fd) if (fd < 0) {perror("open fifo error\n"); exit(0);}
#ifdef SIM_UART_NAME_FIFO_ENABLE
    if(mkfifo("/tmp/uart0", 0666) < 0) {
        perror("mkfifo /tmp/uart0\n");
    }
    if(mkfifo("/tmp/uart1", 0666) < 0) {
        perror("mkfifo /tmp/uart1\n");
    }
    
    if (com_port == 0) {
        su->rx_fd = open("/tmp/uart1", O_RDONLY|O_TRUNC );
        MC_CHECK_FD(su->rx_fd);
        su->tx_fd = open("/tmp/uart0", O_WRONLY|O_TRUNC );
        MC_CHECK_FD(su->tx_fd);
    } else {
        su->tx_fd = open("/tmp/uart1", O_WRONLY|O_TRUNC );
        MC_CHECK_FD(su->tx_fd);
        su->rx_fd = open("/tmp/uart0", O_RDONLY|O_TRUNC );
        MC_CHECK_FD(su->rx_fd);
    }
    printf("open fifo done\n");
#else
    char *ser_name = NULL;
    if (com_port == 0)  {
        ser_name = "/dev/pts/0"; 
    } else {
        ser_name = "/dev/pts/3"; 
    }
    printf("open %s\n", ser_name);
    serial_init(&su->dual_chip_ser, ser_name, 921600);
    if (serial_open(&su->dual_chip_ser) < 0) {
        printf("[%s] open %s fail\n", __func__, ser_name);
        perror("");
        exit(0);
    } else {
        printf("[%s] open %s ok\n", __func__, ser_name);
    }
#endif
#ifdef SHM_ENABLE
    su->shm_fd = shm_open("posixsm", O_CREAT|O_RDWR, 0777);
    if (su->shm_fd < 0) {
        perror("shm_open failed!\n");
        return false;
    }
#endif
    // act.sa_handler = NULL;
    // act.sa_mask = 0;
    // act.sa_flags = SA_SIGINFO|SA_RESTART;
    // act.sa_sigaction = sim_uart_isr;
    // sigaction(SIM_UART_EVENT_REDY_TO_READ, &act, NULL);
    // sigaction(SIM_UART_EVENT_REDY_TO_WRITE, &act, NULL);

    if(SIG_ERR == signal(SIGINT, sim_isr)) perror("SIGINT install err\n");
    // su->txbuf.wdhook.hook = tx_hook;
    // su->txbuf.wdhook.arg = su;

#ifdef SHM_ENABLE
    ftruncate(su->shm_fd, su->shm_size);
    su->shm_addr = mmap(NULL, su->shm_size, PROT_READ|PROT_WRITE, MAP_SHARED, su->shm_fd, 0);
    MC_ASSERT(su->shm_addr);
#endif
    pthread_cond_init(&su->tx_data_ready, NULL);
    pthread_mutex_init(&su->mutex, NULL);
    pthread_mutex_init(&su->cond_wait_mutex, NULL);
    pthread_attr_init(&su->attr);
    // PTHREAD_CREATE_DETACHED（分离的）和PTHREAD_CREATE_JOINABLE（可合并的，也是默认属性）
    pthread_attr_setdetachstate(&su->attr, PTHREAD_CREATE_DETACHED);
    // 有三个取值：SCHED_RR（轮询）、SCHED_FIFO（先进先出）和SCHED_OTHER
    pthread_attr_setschedpolicy(&su->attr, SCHED_RR);
    pthread_create(&su->tx_thread, &su->attr, uart_tx_thread, su);
    pthread_create(&su->rx_thread, &su->attr, uart_rx_thread, su);
    // pthread_join(su->tx_thread, NULL);
    // pthread_join(su->rx_thread, NULL);
    if (dev) {
        if (!ser_bridge_init(&su->sb, dev, 921600, su->txbuf, su->rxbuf)) {
            printf("[%s] %s init fail\n", __func__, dev);
            perror("");
            return false;
        }
    }
    return true;
}

bool sim_uart_deinit(struct sim_uart *su)
{
    pthread_attr_destroy(&su->attr);
#ifdef SIM_UART_NAME_FIFO_ENABLE
    close(su->tx_fd);
    close(su->rx_fd);
#else
    serial_close(&su->dual_chip_ser);
#endif
    ringbuffer_free(su->txbuf);
    ringbuffer_free(su->rxbuf);
    munmap(su->shm_addr, su->shm_size);
    shm_unlink("posixsm");
    ser_bridge_deinit(&su->sb);
}
#ifdef __cplusplus
}
#endif