#ifndef __RINGBUFFER_H__
#define __RINGBUFFER_H__
#include <stdint.h>
#include <stdbool.h>

#define RB_ASSERT(x)
#define RB_MALLOC(x) malloc(x)
#define RB_FREE(x) free(x)
#define min(a, b) (((a) < (b)) ? (a) : (b))
#define enter_critical_section(flag)
#define exit_critical_section(flag)
#define smp_mb()
#define smp_rmb()
#define smp_wmb()

#define RB_ADDRESS_POWER_OF_2 1
#if RB_ADDRESS_POWER_OF_2
//物理读指针位置
#define RB_PHY_RPTR(rb) ((rb)->rptr & ((rb)->size - 1))
//物理写指针位置
#define RB_PHY_WPTR(rb) ((rb)->wptr & ((rb)->size - 1))

#define RB_UPPDATE_RPTR(rb, len) ((rb)->rptr += len) //每次累加，到达最大值后溢出，自动转为0
#define RB_UPPDATE_WPTR(rb, len) ((rb)->wptr += len) //每次累加，到达最大值后溢出，自动转为0
//ringbuffer 中总共有多少数据
#define RB_TOTAL_DATA_SIZE(rb) ((rb)->wptr - (rb)->rptr)

#else
//物理读指针位置
#define RB_PHY_RPTR(rb) ((rb)->rptr)
//物理写指针位置
#define RB_PHY_WPTR(rb) ((rb)->wptr)

#define RB_UPPDATE_RPTR(rb, len) ((rb)->rptr = ((rb)->rptr + len) % (rb)->size) 
#define RB_UPPDATE_WPTR(rb, len) ((rb)->wptr = ((rb)->wptr + len) % (rb)->size) 
//ringbuffer 中总共有多少数据
#define RB_TOTAL_DATA_SIZE(rb) (((rb)->wptr - (rb)->rptr + (rb)->size) % (rb)->size)

#endif

//ringbuffer 中总共有多少空闲空间
#define RB_TOTAL_FREE_SPACE_SIZE(rb) ((rb)->size - RB_TOTAL_DATA_SIZE(rb))

//ringbuffer中，rptr开始，地址连续的数据长度
#define RB_CONTIGUOUS_DATA_SIZE(rb) ((RB_PHY_WPTR(rb) >= RB_PHY_RPTR(rb)) ? \
    (rb)->wptr - (rb)->rptr : ((rb)->size - RB_PHY_RPTR(rb)))
//ringbuffer中，wptr开始，地址连续的空闲空间长度
#define RB_CONTIGUOUS_FREE_SPAPCE_SIZE(rb) ((RB_PHY_WPTR(rb) > RB_PHY_RPTR(rb)) ? \
    ((rb)->size - RB_PHY_WPTR(rb)) : (rb)->rptr - (rb)->wptr)

//ringbuffer中，rptr 位置所在的地址
#define RB_CONTIGUOUS_DATA_START_ADDR(rb) ((rb)->buffer + RB_PHY_RPTR(rb))
//ringbuffer中，wptr 位置所在的地址
#define RB_CONTIGUOUS_FREE_SPACE_START_ADDR(rb) ((rb)->buffer + RB_PHY_WPTR(rb))


typedef struct
{
    uint8_t *buffer; /* the buffer holding the data */
    uint32_t size;     /* the size of the allocated buffer */
    uint32_t wptr;    /* data is added at offset (in % size) */
    uint32_t rptr;    /* data is extracted from off. (out % size) */
} ringbuffer_t;

void rb_init(ringbuffer_t *rb, uint8_t *buffer, uint32_t size);
bool rb_alloc(ringbuffer_t *rb, uint32_t size);
uint32_t rb_write(ringbuffer_t *rb, const uint8_t *buffer, uint32_t len);
uint32_t rb_read(ringbuffer_t *rb, uint8_t *buffer, uint32_t len);
void rb_reset(ringbuffer_t *rb);
void rb_free(ringbuffer_t *rb);
bool rb_full(ringbuffer_t *rb);
bool rb_empty(ringbuffer_t *rb);
uint32_t rb_data_length(ringbuffer_t *rb);
uint32_t rb_free_space(ringbuffer_t *rb);

#endif // __RINGBUFFER_H__
