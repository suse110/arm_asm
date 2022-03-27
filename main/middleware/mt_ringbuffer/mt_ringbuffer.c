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
    rb->buffer_end = buffer + len;
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
bool ringbuffer_get_data_buffer(ringbuffer_t *rb, rb_buffer_t *buffer, uint32_t *buffer_count)
{
    rb_buffer_t *pb = buffer;
    if (!pb || !buffer_count || (*buffer_count < 2)) {
        return false;
    }
    uint32_t len;
    uint32_t total_len;
    pb->buffer = RB_CONTIGUOUS_DATA_START_ADDR(rb);
    len = RB_CONTIGUOUS_DATA_SIZE(rb);
    pb->length = len;
    pb++;
    total_len = RB_TOTAL_DATA_SIZE(rb);

    if (total_len > len) {
        pb->buffer = rb->buffer;
        pb->length = total_len - len;
        *buffer_count = 2;
    } else {
        pb->buffer = NULL;
        pb->length = 0;
        *buffer_count = 1;
    }
    return true;
}
void ringbuffer_dump(ringbuffer_t *rb, const char* file_name)
{
    uint8_t *start_addr = rb->buffer + (rb->rptr.head & rb->mask);
    uint32_t readable_len = RB_TOTAL_DATA_SIZE(rb);

    uint32_t readable_len_head;
    uint32_t readable_len_tail;
    rb->size = RB_TOTAL_DATA_SIZE(rb);

    printf("[%s] rb = 0x%lx\n", __func__, (uintptr_t)rb);
    printf("[%s] wptr.head = 0x%x\n", __func__, rb->wptr.head);
    printf("[%s] wptr.tail = 0x%x\n", __func__, rb->wptr.tail);
    printf("[%s] rptr.head = 0x%x\n", __func__, rb->rptr.head);
    printf("[%s] rptr.tail = 0x%x\n", __func__, rb->rptr.tail);
    printf("[%s] size  = %d\n", __func__, rb->size );
    printf("[%s] mask  = 0x%x\n", __func__, rb->mask );
    printf("[%s] addr_mask_l = 0x%x\n", __func__, rb->addr_mask_l);
    printf("[%s] addr_mask_h = 0x%x\n", __func__, rb->addr_mask_h);
    printf("[%s] capacity    = %d\n", __func__, rb->capacity );
    printf("[%s] esize       = %d\n", __func__, rb->esize );
    printf("[%s] buffer      = %lx\n", __func__, (uintptr_t)rb->buffer );
    printf("[%s] buffer_end  = %lx\n", __func__, (uintptr_t)rb->buffer_end );

    if ((uintptr_t)(start_addr + readable_len) > (uintptr_t)rb->buffer_end) {
        readable_len_head = (uint32_t)rb->capacity - (rb->rptr.head & rb->mask);
        readable_len_tail = readable_len - readable_len_head;
    } else {
        readable_len_head = readable_len;
        readable_len_tail == 0;
    }
    _hexdump(file_name, start_addr, readable_len_head, rb->buffer, readable_len_tail);
}
uint32_t ringbuffer_write_move_head(ringbuffer_t *rb, uint32_t *old_head, uint32_t *new_head, uint32_t len)
{
    uint32_t write_len;
    uint32_t size = len;
    ringbuffer_node_t *node;
    node = &rb->rptr;
    /* step 1: 用wptr->head占位 */
    do {
        /* 先保存老的head，这个head是上一次写完成的位置，后面copy数据到fifo要从这里开始 */
        *old_head = rb->wptr.head;
    
        /* 计算可写入的数据长度 */
        write_len = min(size, RB_TOTAL_FREE_SPACE_SIZE(rb));

        /* head新的位置，先占位 */
        *new_head = *old_head + write_len;
        /* 再看一下head的值是否还等于*old_head，如果不等于head，说明在这之前本task(task1)被其他task(task2)打断,
        task2更新了head，本task需要再重新读取head的值，重新占位 */
    } while(!cas(&rb->wptr.head, *old_head, *new_head));
    return write_len;
}

void ringbuffer_write_move_data(ringbuffer_t *rb, uint8_t *buffer, uint32_t len, uint32_t wptr_old_head)
{
    uint32_t write_len_head;
    write_len_head = RB_MIN(len, rb->capacity - (wptr_old_head & rb->mask));
    memcpy(rb->buffer + (wptr_old_head & rb->mask), buffer, write_len_head);
    memcpy(rb->buffer, buffer + write_len_head, len - write_len_head);
}
void ringbuffer_write_move_tail(ringbuffer_t *rb, uint32_t old_head, uint32_t new_head)
{
    ringbuffer_node_t *node;
    node = &rb->wptr;
    /* step 3: 更新tail，表示数据已经写入ring buffer. 更新tail之前要先看old_head是否等于tail，相等就说明上一个
    task已经将数据写入ring buffer */
    while(!cas(&node->tail, old_head, new_head));
}
uint32_t ringbuffer_write(ringbuffer_t *rb, uint8_t *data, uint32_t len)
{
    uint32_t size = len;
    uint32_t old_head;
    uint32_t new_head;
    uint32_t write_len;
    bool is_empty = false;

    if (ringbuffer_full(rb)) {
        return 0;
    }
    is_empty = ringbuffer_empty(rb);

    write_len = ringbuffer_write_move_head(rb, &old_head, &new_head, size);

    /* step 2: copy 数据到ring buffer */
    // RB_WRITE_DATA(rb, data, write_len, old_head);
    ringbuffer_write_move_data(rb, data, write_len, old_head);

    ringbuffer_write_move_tail(rb, old_head, new_head);

    if (is_empty && rb->wdhook.hook) {
        rb->wdhook.hook(rb->wdhook.arg);
    }
    return write_len;
}


uint32_t ringbuffer_read_move_head(ringbuffer_t *rb, uint32_t *old_head, uint32_t *new_head, uint32_t len)
{
    uint32_t read_len;
    uint32_t size = len;
    ringbuffer_node_t *node;
    node = &rb->rptr;
    /* step 1: 用wptr->head占位 */
    do {
        /* 先保存老的head，这个head是上一次读完成的位置，后面从fifo copy数据要从这里开始 */
        *old_head = rb->rptr.head;
    
        /* 计算buffer里数据的长度 */
        read_len = RB_MIN(size, RB_TOTAL_DATA_SIZE(rb));

        /* head新的位置，先占位 */
        *new_head = *old_head + read_len;  
        /* 再看一下head的值是否还等于old_head，如果不等于head，说明在这之前本task(task1)被其他task(task2)打断,
        task2更新了head，本task需要再重新读取head的值，重新占位 */
    } while(!cas(&rb->rptr.head, *old_head, *new_head));
    return read_len;
}
void ringbuffer_read_move_data(ringbuffer_t *rb, uint8_t *buffer, uint32_t len, uint32_t rptr_old_head)
{
    uint32_t read_len_head;
    read_len_head = RB_MIN(len, rb->capacity - (rptr_old_head & rb->mask));
    memcpy(buffer, rb->buffer + (rptr_old_head & rb->mask), read_len_head);
    memcpy(buffer + read_len_head, rb->buffer, len - read_len_head);
}
void ringbuffer_read_move_tail(ringbuffer_t *rb, uint32_t old_head, uint32_t new_head)
{
    ringbuffer_node_t *node;
    node = &rb->rptr;
    /* step 3: 更新tail，表示数据已经写入ring buffer. 更新tail之前要先看old_head是否等于tail，相等就说明上一个
    task已经将数据写入ring buffer */
    while(!cas(&node->tail, old_head, new_head));
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

    read_len = ringbuffer_read_move_head(rb, &old_head, &new_head, size);
    /* step 2:从ring buffer copy 数据 */
    // RB_READ_DATA(rb, data, read_len, old_head);
    ringbuffer_read_move_data(rb, data, read_len, old_head);

    ringbuffer_read_move_tail(rb, old_head, new_head);

    return read_len;
}
uint32_t ringbuffer_write_buffer(ringbuffer_t *rb_src, ringbuffer_t *rb_dest, uint32_t len)
{
    uint32_t r_old_head;
    uint32_t w_old_head;
    uint32_t r_new_head;
    uint32_t w_new_head;
    uint32_t read_len;
    uint32_t size = len;
    uint32_t mask;
    uint32_t readable_len;
    uint32_t readable_len_head;
    uint32_t readable_len_tail;
    uint32_t writable_len;
    uint32_t dest_free_run;
    uint32_t i;

    ringbuffer_node_t *r_node = &rb_src->rptr;
    ringbuffer_node_t *w_node = &rb_dest->wptr;

    readable_len = ringbuffer_read_move_head(rb_src, &r_old_head, &r_new_head, size);
    writable_len = ringbuffer_write_move_head(rb_dest, &w_old_head, &w_new_head, readable_len);

    uintptr_t src_addr_mask_h = rb_src->addr_mask_h;
    uintptr_t dest_addr_mask_h = rb_src->addr_mask_h;
    uintptr_t src_addr_mask_l = rb_src->addr_mask_l;
    uintptr_t dest_addr_mask_l = rb_src->addr_mask_l;

    uintptr_t src_start_addr  = (uintptr_t)(rb_src->buffer + (r_old_head & rb_src->mask));
    uintptr_t dest_start_addr = (uintptr_t)(rb_dest->buffer + (w_old_head & rb_dest->mask));

    uintptr_t nblock = writable_len & 0xFFFFFFFC;
    uintptr_t nremain = writable_len & 0x3;

    uintptr_t src_addr_h = src_start_addr & src_addr_mask_h;
    uintptr_t dest_addr_h = dest_start_addr & dest_addr_mask_h;

    for (i = 0; i < nblock; i += 4) {
        *(uint8_t*)(dest_addr_h + ((dest_start_addr + i    ) & dest_addr_mask_l)) = *(uint8_t*)(src_addr_h + ((src_start_addr + i    ) && src_addr_mask_l));
        *(uint8_t*)(dest_addr_h + ((dest_start_addr + i + 1) & dest_addr_mask_l)) = *(uint8_t*)(src_addr_h + ((src_start_addr + i + 1) && src_addr_mask_l));
        *(uint8_t*)(dest_addr_h + ((dest_start_addr + i + 2) & dest_addr_mask_l)) = *(uint8_t*)(src_addr_h + ((src_start_addr + i + 2) && src_addr_mask_l));
        *(uint8_t*)(dest_addr_h + ((dest_start_addr + i + 3) & dest_addr_mask_l)) = *(uint8_t*)(src_addr_h + ((src_start_addr + i + 3) && src_addr_mask_l));
    }
    switch (nremain)
    {
    case 3:
        *(uint8_t*)(dest_addr_h + ((dest_start_addr + i    ) & dest_addr_mask_l)) = *(uint8_t*)(src_addr_h + ((src_start_addr + i    ) && src_addr_mask_l));
    case 2:
        *(uint8_t*)(dest_addr_h + ((dest_start_addr + i + 1) & dest_addr_mask_l)) = *(uint8_t*)(src_addr_h + ((src_start_addr + i + 1) && src_addr_mask_l));
    case 1:
        *(uint8_t*)(dest_addr_h + ((dest_start_addr + i + 2) & dest_addr_mask_l)) = *(uint8_t*)(src_addr_h + ((src_start_addr + i + 2) && src_addr_mask_l));
    case 0:
    default:
        break;
    }

    ringbuffer_read_move_tail(rb_src, r_old_head, r_new_head);
    ringbuffer_write_move_tail(rb_dest, w_old_head, w_new_head);
    return writable_len;
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
