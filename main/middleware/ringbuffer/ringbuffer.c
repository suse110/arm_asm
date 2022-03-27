
//要防止多进程多线程并发访问ringbuffer
/* 多线程环境下
1. 1生产 1消费, 需要内存屏障
2. 多生产，多消费 ，加锁

*/

/*

example:
    ring bufer size is 8

    1. fifo is empty
    |<--------------size----------->|
  start                            end
    |                               |
    v                               v
    *---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   |   |   |
    *---*---*---*---*---*---*---*---*
    |
    v
rptr' = wptr'

    logic position
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |
    v
rptr = wptr

    2. write 6 data to buffer, data length == wptr - rptr == 6
    *---*---*---*---*---*---*---*---*
    | + | + | + | + | + | + |   |   |
    *---*---*---*---*---*---*---*---*
    |                       |
    v                       v
   rptr'                   wptr'
    logic position
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    | + | + | + | + | + | + |   |   |   |   |   |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |                       |
    v                       v
   rptr                    wptr


    3. then, write 2 data to buffer, buffer is full, data length == wptr - rptr == 8
    *---*---*---*---*---*---*---*---*
    | + | + | + | + | + | + | + | + |
    *---*---*---*---*---*---*---*---*
    |
    v
wptr' = rptr'

    logic position
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    | + | + | + | + | + | + | + | + |   |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |                               |
    v                               v
   rptr                            wptr

    4. read 5 data, data length == wptr - rptr == 3
    *---*---*---*---*---*---*---*---*
    |   |   |   |   |   | + | + | + |
    *---*---*---*---*---*---*---*---*
    |                   |
    v                   v
   wptr'                rptr'
    logic position
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   | + | + | + |   |   |   |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                        |           |
                        v           v
                       rptr        wptr


    5. write 3 data, data length == wptr - rptr == 6
    *---*---*---*---*---*---*---*---*
    | + | + | + |   |   | + | + | + |
    *---*---*---*---*---*---*---*---*
                |       |
                v       v
               wptr'   rptr'
    logic position
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   | + | + | + | + | + | + |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                        |                       |
                        v                       v
                       rptr                    wptr

    6. read 4 data
    *---*---*---*---*---*---*---*---*
    |   | + | + |   |   |   |   |   |
    *---*---*---*---*---*---*---*---*
        |       |
        v       v
       rptr'   wptr'
    logic position
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   |   |   |   | + | + |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                                        |       |
                                        v       v
                                       rptr    wptr

The value of size must round up to power of two.
rptr' = rptr & (size - 1)
wptr' = wptr & (size - 1)

1. when ring buffer is empty ?
    rptr == wptr
2. when ring buffer is full?
    size == wptr - rptr
3. how many data in ring buffer?
    wptr - rptr
3. how many free space in ring buffer?
    size - (wptr - rptr)
4. what the behavior when wptr' and rptr' almost reach the maximum?
    rptr = 0xFFFFFFF - 4 = 0xFFFFFFFB = 4294967291
    wptr = 0xFFFFFFF - 2 = 0xFFFFFFFD = 4294967293
    rptr' = rptr & (size - 1) = 0xFFFFFFFB & 7 = 3
    wptr' = wptr & (size - 1) = 0xFFFFFFFD & 7 = 5
    *---*---*---*---*---*---*---*---*
    |   |   |   | + | + |   |   |   |
    *---*---*---*---*---*---*---*---*
                |       |
                v       v
               rptr'   wptr'
    logic position
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   |   |   |   |   |   | + | + |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                                                |       |
                                                v       v
                                               rptr    wptr
    free space == size - (wptr - rptr) == 8 - (0xFFFFFFFD - 0xFFFFFFFB) == 8 - 2 == 6

    write 2 data to buffer
    *---*---*---*---*---*---*---*---*
    |   |   |   | + | + | + | + |   |
    *---*---*---*---*---*---*---*---*
                |               |
                v               v
               rptr'           wptr'
    logic position
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   |   |   |   |   |   | + | + | + | + |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                                                |               |
                                                v               v
                                               rptr            wptr
    wptr + 2 = 0xFFFFFFFD + 2 = 0xFFFFFFFF

    write 1 data to buffer
    *---*---*---*---*---*---*---*---*
    |   |   |   | + | + | + | + | + |
    *---*---*---*---*---*---*---*---*
    |           |
    v           v
   wptr'       rptr'

    logic position
    *---*---*---*---*---*---*-...--*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | ...  |   |   |   |   | + | + | + | + | + |
    *---*---*---*---*---*---*-...--*---*---*---*---*---*---*---*---*---*
    |                                           |
    v                                           v
   wptr                                        rptr

    32 bit uint32_terger overflow
        wptr + 2 = 0xFFFFFFFF + 1 = 0
    wptr and rptr are uint32_teger
        data size = wptr - rptr = 0 - 0xFFFFFFFB = 5

5. How to calculate the data size and the free size at a contingous space of the ring buffer?
case 1:
    data size = wptr - rptr
    tail free size = size - wptr' = size - (wptr & (size - 1))

    1. 取得all free size 和 write_size 最小值 min_len_1
    all free size = size - (wptr - rptr)
    2. 取得 min_len_1和尾部空间最小值(尾部空间可能是case2)
    0   1   2   3   4   5   6   7
    *---*---*---*---*---*---*---*---*
    |   |   |   | + | + |   |   |   |
    *---*---*---*---*---*---*---*---*
                |       |
                v       v
               rptr'   wptr'
    logic position
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   |   |   |   |   |   | + | + |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                                                |       |
                                                v       v
                                               rptr    wptr

    写2个byte:
    --取写入数据长度与可用空间的最小值，避免越界
    len = min(len, rb->size - rb->wptr + rb->rptr); --> len = min(2, 8 - 13 + 11) = 2
    --取写入数据长度与wptr到buffer末尾长度的最小值
    l = min(len, rb->size - (rb->wptr & (rb->size - 1))); -->l = min(2, 8 - (13&7)) = 2
    memcpy(rb->buffer + (rb->wptr & (rb->size - 1)), buffer, l); --> copy 2 个
    memcpy(rb->buffer, buffer + l, len - l); --> copy 0 个
    rb->wptr += len;

    写4个byte:
    --取写入数据长度与可用空间的最小值，避免越界
    len = min(len, rb->size - rb->wptr + rb->rptr); --> len = 4
    --取写入数据长度与wptr到buffer末尾长度的最小值
    l = min(len, rb->size - (rb->wptr & (rb->size - 1))); -->l = 3
    memcpy(rb->buffer + (rb->wptr & (rb->size - 1)), buffer, l); --> copy 3 个
    memcpy(rb->buffer, buffer + l, len - l); --> copy 1 个
    rb->wptr += len;


case 2:
    data size = size - rptr = size - (rptr' & (size - 1))
    free size = rptr - wptr = (rptr' & (size - 1) - (wptr' & (size - 1)
    0   1   2   3   4   5   6   7
    *---*---*---*---*---*---*---*---*
    | + |   |   |   |   |   | + | + |
    *---*---*---*---*---*---*---*---*
        |                   |
        v                   v
       wptr'               rptr'
    logic position
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + |   |   |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |
                            v           v
                           rptr        wptr

    写4个byte:
    --取写入数据长度与可用空间的最小值，避免越界
    len = min(len, rb->size - rb->wptr + rb->rptr); --> len = min(4, 8 - 9 + 6) = 4
    --取写入数据长度与wptr到buffer末尾长度的最小值(tail_length), case2时，这里一定取的len的值，len 一定小于tail_length
    l = min(len, rb->size - (rb->wptr & (rb->size - 1))); -->l = min(4, 8 - (9 & 7)) = 4
    memcpy(rb->buffer + (rb->wptr & (rb->size - 1)), buffer, l); --> copy 4 个
    memcpy(rb->buffer, buffer + l, len - l); --> copy 0 个
    rb->wptr += len;


## 支持多个user同时写入，多个user同时读取

    将rptr 用 r_head和r_tail代替，当r_head等于r_tail时，读操作完毕
    将wptr 用 w_head和w_tail代替，当w_head等于w_tail时，写操作完毕
    r_head和r_tail 以及 w_head和w_tail 都是全局变量，所有user都可以访问
    那么:
        buffer中数据的长度 = w_head - r_tail
        buffer中空闲空间总长度 = size - (w_head - r_tail)

    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + |   |   |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |
                            v           v
                         r_head        w_head
                         r_tail        w_tail



写入n个数据:
    1. 先预先分配需要的空间
        先将写n个数据后的位置更新到w_head，先占用这段数据，其他user来写数据的时候，会先从w_head开始

        old_w_head = w_head;//先将write 的起始位置存入局部变量中.TODO:这里多个user读会有问题吗？
        rmb() //读内存屏障保证执行下面的code之前，w_head已经被读到了old_w_head

        free_size = size - (w_head - r_tail);//获取剩余空间大小

        if(unlikely(n > free_size)) {//写入数据长度不能超过buffer空闲空间
            n = free_size;
        }

        new_w_head = old_w_head + n;

        w_head = new_w_head;//这里怎么保证多个user写入不会有问题？ CAS，关中断？

        这里执行完毕后，从old_w_head 到new_w_head这段空间已经预先占用，下一步需要向里面写入数据
    2. 写入数据到old_w_head 到new_w_head这段空间
    3. 写完毕后，更新new_w_head 到 w_tail
        wmb()//写内存屏障，保证数据已经写入到buffer
        这里还需要确认当前的w_tail是否等于old_w_head，它们相等的时候，表示上一个user已经将数据写入完毕。
        到这里，上一个user可能还没写入完毕，也就是w_tail 不等于 old_w_hea，如果，直接将new_w_head 更新
        到 w_tail，上一个user写入完毕后会覆盖掉w_tail

### 举个例子：
    写入3个数据

    #### 单个user的情况下

    1. 当前处于无user写，无user读的状态: r_head==r_tail, w_head==w_tail，将w_head的值更新到 old_w_head
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + |   |   |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |
                            v           v
                         r_head        w_head
                         r_tail        w_tail
                                     old_w_head
    2. 先看w_head是否等于old_w_head，如果相等，更新w_head到新的new_w_head位置，以占用空间
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + |   |   |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |           |
                            v           v           v
                         r_head       w_tail      w_head
                         r_tail     old_w_head    new_w_head
    3. 写入数据
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + | + | + | + |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |           |
                            v           v           v
                         r_head       w_tail      w_head
                         r_tail     old_w_head    new_w_head
    4. 更新w_tail
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + | + | + | + |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |                       |
                            v                       v
                         r_head                  w_head
                         r_tail                  w_tail

    #### 2个user的情况下
    1. 当前处于无user写，无user读的状态: r_head==r_tail, w_head==w_tail，将w_head的值更新到 old_w_head
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + |   |   |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |
                            v           v
                         r_head        w_head
                         r_tail        w_tail
                                     old_w_head
    2. user 1 先看w_head是否等于old_w_head，如果相等，更新w_head到新的new_w_head位置，以占用空间
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + |   |   |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |           |
                            v           v           v
                         r_head       w_tail     w_head
                         r_tail     old_w_head new_w_head
    3. 这时候user 2 进来，想写2个数据，这时候看到w_head在12位置，想更新到14位置
    user 2先看w_head是否等于old_w_head', old_w_head' 为user 2 的写入起始位置，相等则更新w_head
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + |   |   |   |   |   |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |           |       |
                            v           v           v       v
                         r_head       w_tail   new_w_head  w_head
                         r_tail     old_w_head old_w_head'
    2. user 2 写入数据
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + |   |   |   | + | + |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |           |       |
                            v           v           v       v
                         r_head       w_tail   new_w_head  w_head
                         r_tail     old_w_head old_w_head'

    3. user 2 想更新w_tail的值，但是看到 w_tail 的值不等于 old_w_head',user2就要等到它们相等后才能更新w_tail
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + |   |   |   | + | + |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |           |       |
                            v           v           v       v
                         r_head       w_tail   new_w_head  w_head
                         r_tail     old_w_head old_w_head'

    4. 回到user 1 写数据
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + | + | + | + | + | + |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |           |       |
                            v           v           v       v
                         r_head       w_tail   new_w_head  w_head
                         r_tail     old_w_head old_w_head'
    5. user 1 写完数据后发现w_tail == old_w_head，然后将w_tail的值更新为new_w_head
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + | + | + | + | + | + |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |           |       |
                            v           v           v       v
                         r_head                new_w_head  w_head
                         r_tail     old_w_head old_w_head'
                                                  w_tail
    6. 回到user2， 发现w_tail 的值等于 old_w_head'，则更新w_tail为w_head
    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
    |   |   |   |   |   |   | + | + | + | + | + | + | + | + |   |   | ...
    *---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*
                            |           |           |       |
                            v           v           v       v
                         r_head                new_w_head  w_head
                         r_tail     old_w_head old_w_head' w_tail

问题:
    第二个user要等第一个user写入完毕才能完成写操作
    
*/


#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include "ringbuffer.h"

#if RB_ADDRESS_POWER_OF_2
static bool is_power_of_2(uint32_t x);
static uint32_t roundup_pow_of_two(uint32_t x);
#endif

ringbuffer_t *rb_init(uint8_t *buffer, uint32_t size)
{
    ringbuffer_t *rb;
#if RB_ADDRESS_POWER_OF_2
    /* size must be a power of 2 */
    RB_ASSERT(!is_power_of_2(size));
#endif
    rb = (ringbuffer_t *)RB_MALLOC(sizeof(ringbuffer_t));
    if (!rb)
        return NULL;
    rb->buffer = buffer;
    rb->size = size;
    rb->wptr = rb->rptr = 0;
    return rb;
}

ringbuffer_t *rb_alloc(uint32_t size)
{
    uint8_t *buffer;
    ringbuffer_t *ret;
#if RB_ADDRESS_POWER_OF_2
    //rb->size的值总是在调用者传进来的size参数的基础上向2的幂扩展
    //对rb->size取模运算可以转化为与运算.rb->wptr % rb->size 可以转化为 rb->wptr & (rb->size – 1)
    if (!is_power_of_2(size)) {
        RB_ASSERT(size > 0x80000000);
        size = roundup_pow_of_two(size);
    }
#endif
    buffer = (uint8_t *)RB_MALLOC(size);
    if (!buffer)
        return NULL;
    ret = rb_init(buffer, size);

    if (!ret)
        RB_FREE(buffer);
    return ret;
}

void rb_reset(ringbuffer_t *rb)
{
    rb->rptr = rb->wptr = 0;
}

void rb_free(ringbuffer_t *rb)
{
    RB_FREE(rb->buffer);
    rb->buffer = NULL;
    rb->rptr = rb->wptr = rb->size = 0;
    RB_FREE(rb);
}

bool rb_full(ringbuffer_t *rb)
{
    return (rb->size == RB_TOTAL_DATA_SIZE(rb)) ? true : false;
}

bool rb_empty(ringbuffer_t *rb)
{
    return (rb->wptr == rb->rptr) ? true : false;
}

uint32_t rb_data_length(ringbuffer_t *rb)
{
    return RB_TOTAL_DATA_SIZE(rb);
}

uint32_t rb_free_space(ringbuffer_t *rb)
{
    return RB_TOTAL_FREE_SPACE_SIZE(rb);
}

uint32_t __rb_write(ringbuffer_t *rb, const uint8_t *buffer, uint32_t len)
{
    uint32_t l;
    //取写入数据长度与可用空间的最小值，避免越界
    len = min(len, RB_TOTAL_FREE_SPACE_SIZE(rb));
    // printf("[%s] 0 size=%d wptr=%d rptr=%d len=%d\n", __func__, rb->size, rb->wptr, rb->rptr, len);
    /*
     * Ensure that we sample the rb->rptr index -before- we
     * start writeting bytes into the ringbuffer.
     */
    smp_mb();
    /* first write the data starting from rb->wptr to buffer end */
    //取写入数据长度与wptr到buffer末尾长度的最小值
    l = min(len, rb->size - RB_PHY_WPTR(rb));
    // printf("[%s] 0 wptr=%d l=%d\n", __func__, rb->wptr, l);
    memcpy(rb->buffer + RB_PHY_WPTR(rb), buffer, l);
    /* then write the rest (if any) at the beginning of the buffer */
    memcpy(rb->buffer, buffer + l, len - l);

    /*
     * Ensure that we add the bytes to the ringbuffer -before-
     * we update the rb->wptr index.
     */
    smp_wmb();
    // printf("[%s] 1 wptr=%d len=%d\n", __func__, rb->wptr, len);
    //kringbuffer的巧妙之处在于in和out定义为无符号类型，在write和read时，in和out都是增加，当达到最大值时，产生溢出，使得从0开始，进行循环使用
    // RB_UPDATE_WPTR(rb, len);
    // printf("[%s] 2 wptr=%d len=%d\n", __func__, rb->wptr, len);
    return len;
}

uint32_t __rb_read(ringbuffer_t *rb, uint8_t *buffer, uint32_t len)
{
    uint32_t l;
    if (rb_empty(rb)) {
        return 0;
    }
    //有数据的缓冲区的长度
    len = min(len, RB_TOTAL_DATA_SIZE(rb));
    // printf("[%s]-- 0 wptr=%d rptr=%d len=%d wptr-rptr=%d min(5, -128)=%u\n", __func__, rb->wptr, rb->rptr, len, RB_TOTAL_DATA_SIZE(rb), min(5, -128));

    /*
     * Ensure that we sample the rb->wptr index -before- we
     * start removing bytes from the ringbuffer.
     */
    smp_rmb();
    /* first read the data from rb->rptr until the end of the buffer */
    l = min(len, rb->size - RB_PHY_RPTR(rb));

    memcpy(buffer, rb->buffer + RB_PHY_RPTR(rb), l);
    /* then read the rest (if any) from the beginning of the buffer */
    memcpy(buffer + l, rb->buffer, len - l);
    /*
     * Ensure that we remove the bytes from the ringbuffer -before-
     * we update the rb->rptr index.
     */
    smp_mb();
    // printf("[%s] 1 rptr=%d len=%d\n", __func__, rb->rptr, len);
    // RB_UPDATE_RPTR(rb, len);
    // printf("[%s] 2 rptr=%d len=%d\n", __func__, rb->rptr, len);
    return len;
}

uint32_t rb_write(ringbuffer_t *rb, const uint8_t *buffer, uint32_t len)
{
    unsigned long flags;
    uint32_t ret;
    enter_critical_section(flags);
    ret = __rb_write(rb, buffer, len);
    exit_critical_section(flags);
    return ret;
}

uint32_t rb_read(ringbuffer_t *rb, uint8_t *buffer, uint32_t len)
{
    unsigned long flags;
    uint32_t ret;
    enter_critical_section(flags);
    ret = __rb_read(rb, buffer, len);
    exit_critical_section(flags);
    return ret;
}

/**
  * @brief  Determine whether some value is a power of two.
  * @param  [in] x: The number to be confirmed.
  * @retval true:   Yes.
  * @retval false:  No.
  * @note   Where zero is not considered a power of two.
  */
static bool is_power_of_2(uint32_t x)
{
    return (x != 0) && ((x & (x - 1)) == 0);
}

/**
  * @brief  Round the given value up to nearest power of two.
  * @param  [in] x: The number to be converted.
  * @return The power of two.
  */
static uint32_t roundup_pow_of_two(uint32_t x)
{
    uint32_t b = x;
    int i;
    for (i = 0; b; i++) {
        b >>= 1;
    }
    return 1 << i;
}
