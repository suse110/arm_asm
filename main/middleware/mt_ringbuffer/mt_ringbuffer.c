#include "mt_ringbuffer.h"
#include "hexdump.h"

#if RB_ADDRESS_POWER_OF_2
static bool is_power_of_2(uint32_t x);
static uint32_t roundup_pow_of_two(uint32_t x);
#endif

bool ringbuffer_init(ringbuffer_t *rb, uint8_t *buffer, uint32_t len)
{
#if RB_ADDRESS_POWER_OF_2
    /* size must be a power of 2 */
    RB_ASSERT(!is_power_of_2(size));
#endif
    if (!rb || !buffer) 
        return false;
    rb->buffer = buffer;
    rb->size = 0;
    rb->capacity = len;
#if RB_ADDRESS_POWER_OF_2
    rb->mask = len - 1;
#endif
    rb->wptr.head = 0;
    rb->wptr.tail = 0;
    rb->rptr.head = 0;
    rb->rptr.tail = 0;

    return true;
}

bool ringbuffer_alloc(ringbuffer_t *rb, uint32_t len)
{
#if RB_ADDRESS_POWER_OF_2
    //rb->size的值总是在调用者传进来的size参数的基础上向2的幂扩展
    //对rb->size取模运算可以转化为与运算.rb->wptr % rb->size 可以转化为 rb->wptr & (rb->size – 1)
    if (!is_power_of_2(len)) {
        RB_ASSERT(len > 0x80000000);
        len = roundup_pow_of_two(len);
    }
#endif
    return ringbuffer_init(rb, RB_MALLOC(len), len);;
}

void ringbuffer_reset(ringbuffer_t *rb)
{
    rb->wptr.head = 0;
    rb->wptr.tail = 0;
    rb->rptr.head = 0;
    rb->rptr.tail = 0;
}

void ringbuffer_free(ringbuffer_t *rb)
{
    RB_FREE(rb->buffer);
    rb->buffer = NULL;
    rb->size = 0;
    ringbuffer_reset(rb);
}

uint32_t ringbuffer_write(ringbuffer_t *rb, uint8_t *data, uint32_t len)
{
    uint32_t size = len;
    uint32_t old_head;
    uint32_t new_head;
    uint32_t write_len;
    
    if (ringbuffer_full(rb)) {
        return 0;
    }

    /* step 1: 用wptr->head占位 */
    do {
        /* 先保存老的head，这个head是上一次写完成的位置，后面copy数据到fifo要从这里开始 */
        old_head = rb->wptr.head;
    
        /* 计算可写入的数据长度 */
        write_len = min(size, RB_TOTAL_FREE_SPACE_SIZE(rb));

        /* head新的位置，先占位 */
        new_head = old_head + write_len;
        /* 再看一下head的值是否还等于old_head，如果不等于head，说明在这之前本task(task1)被其他task(task2)打断,
        task2更新了head，本task需要再重新读取head的值，重新占位 */
    } while(!cas(&rb->wptr.head, old_head, new_head));
    
    /* step 2: copy 数据到ring buffer */
    RB_WRITE_DATA(rb, data, write_len, old_head);
    /* step 3: 更新tail，表示数据已经写入ring buffer. 更新tail之前要先看old_head是否等于tail，相等就说明上一个
    task已经将数据写入ring buffer */
    while(!cas(&rb->wptr.tail, old_head, new_head));
    return write_len;
}



uint32_t ringbuffer_read(ringbuffer_t *rb, uint8_t *data, uint32_t len)
{
    uint32_t old_head;
    uint32_t new_head;
    uint32_t read_len;
    uint32_t size = len;

    if (ringbuffer_empty(rb)) {
        return 0;
    }

    /* step 1: 用wptr->head占位 */
    do {
        /* 先保存老的head，这个head是上一次读完成的位置，后面从fifo copy数据要从这里开始 */
        old_head = rb->rptr.head;
    
        /* 计算buffer里数据的长度 */
        read_len = min(size, RB_TOTAL_DATA_SIZE(rb));

        /* head新的位置，先占位 */
        new_head = old_head + read_len;  
        /* 再看一下head的值是否还等于old_head，如果不等于head，说明在这之前本task(task1)被其他task(task2)打断,
        task2更新了head，本task需要再重新读取head的值，重新占位 */
    } while(!cas(&rb->rptr.head, old_head, new_head));
    
    /* step 2:从ring buffer copy 数据 */
    RB_READ_DATA(rb, data, read_len, old_head);
    /* step 3: 更新tail，表示数据已经写入ring buffer. 更新tail之前要先看old_head是否等于tail，相等就说明上一个
    task已经将数据写入ring buffer */
    while(!cas(&rb->rptr.tail, old_head, new_head));

    return read_len;
}
void ringbuffer_dump(ringbuffer_t *rb)
{
    rb->size = RB_TOTAL_DATA_SIZE(rb);
    printf("capacity     = %d\n", rb->capacity);
    printf("size         = %d\n", rb->size);
    printf("mask         = %d\n", rb->mask);
    printf("[l]wptr.head = %4d, wptr.tail = %4d\n", rb->wptr.head, rb->wptr.tail);
    printf("[p]wptr.head = %4d, wptr.tail = %4d\n", rb->wptr.head & rb->mask, rb->wptr.tail & rb->mask);
    printf("[l]rptr.head = %4d, rptr.tail = %4d\n", rb->rptr.head, rb->rptr.tail);
    printf("[p]rptr.head = %4d, rptr.tail = %4d\n", rb->rptr.head & rb->mask, rb->rptr.tail & rb->mask);

    uint32_t read_len_head;
    read_len_head = min(rb->size, rb->size - RB_PHY_RPTR_TAIL(rb));
    hexdump(rb->buffer + RB_PHY_RPTR_TAIL(rb), read_len_head);
    hexdump(rb->buffer, rb->size - read_len_head);
}
#if RB_ADDRESS_POWER_OF_2
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
#endif
