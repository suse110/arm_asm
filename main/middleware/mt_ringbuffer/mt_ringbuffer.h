#ifndef __MT_RINGBUFFER_H__
#define __MT_RINGBUFFER_H__
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdatomic.h>

#define atomic_add(addr, val) __sync_fetch_and_add(addr, val)
#define atomic_sub(addr, val) __sync_fetch_and_sub(addr, val)
#define cas(ptr, old, new) __sync_bool_compare_and_swap(ptr, old, new)

typedef struct {
    uint32_t head;
    uint32_t tail;
} ringbuffer_node_t;

typedef struct {
    ringbuffer_node_t wptr;
    ringbuffer_node_t rptr;

    uint32_t size; /*ring buffer 里数据长度*/
    uint32_t mask /*计算掩码*/;
    uint32_t capacity; /*ring buffer 大小*/
    uint32_t esize; /*ring buffer中一个数据的大小*/
    uint8_t *buffer;
} ringbuffer_t;

#define RB_ASSERT(x)
#define RB_MALLOC(x) malloc(x)
#define RB_FREE(x) free(x)
#define min(a, b) (((a) < (b)) ? (a) : (b))

#define RB_ADDRESS_POWER_OF_2 1
#if RB_ADDRESS_POWER_OF_2
//物理读指针位置
#define RB_PHY_RPTR_HEAD(rb) (rb->rptr.head & rb->mask)
#define RB_PHY_RPTR_TAIL(rb) (rb->rptr.tail & rb->mask)
//物理写指针位置
#define RB_PHY_WPTR_HEAD(rb) (rb->wptr.head & rb->mask)
#define RB_PHY_WPTR_TAIL(rb) (rb->wptr.tail & rb->mask)

#define RB_UPPDATE_RPTR(rb, len) (rb->rptr += len) //每次累加，到达最大值后溢出，自动转为0
#define RB_UPPDATE_WPTR(rb, len) (rb->wptr += len) //每次累加，到达最大值后溢出，自动转为0

//ringbuffer 中总共有多少数据,写完的减去还没读走
#define RB_TOTAL_DATA_SIZE(rb) (rb->wptr.tail - rb->rptr.head)


/* 先copy rptr到buffer末尾这段, 再copy buffer开头剩余部分 */
#define RB_READ_DATA(rb, data, read_len, old_head)\
{\
    uint32_t read_len_head;\
    read_len_head = min(read_len, rb->capacity - (old_head&rb->mask));\
    memcpy(data, rb->buffer + (old_head&rb->mask), read_len_head);\
    memcpy(data + read_len_head, rb->buffer, read_len - read_len_head);\
}

/* 先copy wptr到buffer末尾这段, 再copy buffer开头剩余部分 */
#define RB_WRITE_DATA(rb, data, write_len, old_head)\
{\
    uint32_t write_len_head;\
    write_len_head = min(write_len, rb->capacity - (old_head&rb->mask));\
    memcpy(rb->buffer + (old_head&rb->mask), data, write_len_head);\
    memcpy(rb->buffer, data + write_len_head, write_len - write_len_head);\
}

#define RB_IS_EMPTY(rb) ((rb->wptr.tail == rb->rptr.tail) ? true : false)
#define RB_IS_FULL(rb) ((rb->capacity == RB_TOTAL_DATA_SIZE(rb)) ? true : false)

#else
//物理读指针位置
#define RB_PHY_RPTR_HEAD(rb) (rb->rptr.head)
#define RB_PHY_RPTR_TAIL(rb) (rb->rptr.tail)
//物理写指针位置
#define RB_PHY_WPTR_HEAD(rb) (rb->wptr.head)
#define RB_PHY_WPTR_TAIL(rb) (rb->wptr.tail)

#define RB_UPPDATE_RPTR(rb, len) (rb->rptr = (rb->rptr + len) % rb->capacity) 
#define RB_UPPDATE_WPTR(rb, len) (rb->wptr = (rb->wptr + len) % rb->capacity) 
//ringbuffer 中总共有多少数据
#define RB_TOTAL_DATA_SIZE(rb) ((rb->wptr.tail - rb->rptr.head + rb->capacity) % rb->capacity)

#endif

//ringbuffer 中总共有多少空闲空间
#define RB_TOTAL_FREE_SPACE_SIZE(rb) (rb->capacity - RB_TOTAL_DATA_SIZE(rb))

//ringbuffer中，rptr开始，地址连续的数据长度
#define RB_CONTIGUOUS_DATA_SIZE(rb) ((RB_PHY_WPTR(rb) >= RB_PHY_RPTR(rb)) ? \
    rb->wptr - rb->rptr : (rb->capacity - RB_PHY_RPTR(rb)))
//ringbuffer中，wptr开始，地址连续的空闲空间长度
#define RB_CONTIGUOUS_FREE_SPAPCE_SIZE(rb) ((RB_PHY_WPTR(rb) > RB_PHY_RPTR(rb)) ? \
    (rb->capacity - RB_PHY_WPTR(rb)) : rb->rptr - rb->wptr)

//ringbuffer中，rptr 位置所在的地址
#define RB_CONTIGUOUS_DATA_START_ADDR(rb) (rb->buffer + RB_PHY_RPTR(rb))
//ringbuffer中，wptr 位置所在的地址
#define RB_CONTIGUOUS_FREE_SPACE_START_ADDR(rb) (rb->buffer + RB_PHY_WPTR(rb))

bool ringbuffer_init(ringbuffer_t *rb, uint8_t *buffer, uint32_t capacity);
bool ringbuffer_alloc(ringbuffer_t *rb, uint32_t capacity);
uint32_t ringbuffer_write(ringbuffer_t *rb, uint8_t *buffer, uint32_t len);
uint32_t ringbuffer_read(ringbuffer_t *rb, uint8_t *buffer, uint32_t len);
void ringbuffer_reset(ringbuffer_t *rb);
void ringbuffer_free(ringbuffer_t *rb);

void ringbuffer_dump(ringbuffer_t *rb);

static inline bool ringbuffer_full(ringbuffer_t *rb)
{
    return RB_IS_FULL(rb);
}

static inline bool ringbuffer_empty(ringbuffer_t *rb)
{
    return RB_IS_EMPTY(rb);
}

static inline uint32_t ringbuffer_data_length(ringbuffer_t *rb)
{
    return RB_TOTAL_DATA_SIZE(rb);
}

static inline uint32_t ringbuffer_free_space(ringbuffer_t *rb)
{
    return RB_TOTAL_FREE_SPACE_SIZE(rb);
}

#endif // __MT_RINGBUFFER_H__
