#ifndef __MBUF_H__
#define __MBUF_H__

struct mbuf {
    struct mbuf *next;
    uint8_t *buffer;
};

typedef struct mbuf mbut_t;


#endif // __MBUF_H__

/*
            memcpy1            memcpy2
user buffer<-------->user_fifo<-------->uart_vfifo
1. user 先准备数据，数据放入user自己的buffer里，这个buffer可能是静态数组or动态分配的内存
2. user 执行memory1，将数据放入user_fifo
3. uart tx 时，将user_fifo中的数据再memcpy2到uart vfifo

这里需要两次memcpy
改进:
    user直接将数据放入user_fifo
    如果user每次发送数据包大小固定，或者数据包大小就固定几种
    比如: 由3个user。其 pkg 大小为 2048 bytes,1024Bytes, 其他长度小于256 bytes的数据包
    可以预先分配 3 个 2048 byte的 mbuf，3个1024 bytes的mbuf，允许存3包数据
    分配 10个100 bytes的mbuf，用于发送小包数据

            mbuf 存放800字节数据
            *--------------*            *--------------*
            |  next        |----------->|  next        |
            *--------------*            *--------------*
    --------|  next_pkg    |            | next_pkg=NULL|
    |       *--------------*            *--------------*
    |   ----| pdata        |        ----| pdata        |
    |   |   *--------------*        |   *--------------*
    |   |   |data_len = 512|        |   |data_len = 288|
    |   |   *--------------*        |   *--------------*
    |   |   |pkg_len = 800 |        |   | pkg_len = 0  |
    |   |   *--------------*        |   *--------------*
    |   --->|  head=4B     |        --->|              |
    |       *--------------*            |              |
    |       |              |            |              |
    |       | 508 B        |            | 288 B        |
    |       |              |            |              |
    |       |              |            |--------------|
    |       |              |            |              |
    |       |              |            | not used     |
    |       *--------------*            *--------------*
    |
    |       mbuf 存放104字节数据
    |       *--------------* 
    ------->|  next        |
            *--------------* 
            |  next_pkg    | 
            *--------------* 
        ----| pdata        |
        |   *--------------* 
        |   |data_len = 100| 
        |   *--------------* 
        |   |pkg_len = 100 | 
        |   *--------------* 
        --->|  head=4B     | 
            *--------------* 
            |              | 
            |  96 B        | 
            |              | 
            |--------------| 
            |              | 
            |   not used   | 
            *--------------* 

    1.TX
        * user直接将原始数据放入mbuf中，然后再把mbuf放入发送队列，通过tail指针直接添加到队尾
        * 也可以直接通过head指针插入队列头部实现优先发送，有可能第一包数据还在发送中，可以选择插入到head的下一包
        * 如果要发送一个大的数据包，超过2048字节，可以malloc一个buffer，mbuf的pdata指向这个buffer，发送完毕后free
    tx queue:

        *--------------*
    ----|     head     |
    |   *--------------*
    |   |     tail     |-----------------------------------------------------
    |   *--------------*                                                    |
    |                                                                       v
    |   *--------------*    *--------------*    *--------------*    *--------------*
    --->|     next     |    |     next     |    |     next     |    |     next     |
        *--------------*    *--------------*    *--------------*    *--------------*
        |     next_pkg |--->|     next_pkg |--->|     next_pkg |--->|     next_pkg |
        *--------------*    *--------------*    *--------------*    *--------------*

    2.RX
        * 通过检查数据包头，知道数据包大小，然后分配与此大小接近的mbuf
        * 通过tail指针，将数据包插入接收队列
        * 
*/