#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include "fifo.h"
#define ASSERT(x)
#define MALLOC(x) malloc(x)
#define FREE(x) free(x)
#define min(a, b) (((a) < (b)) ? (a) : (b))
#define enter_critical_section(flag)
#define exit_critical_section(flag)
#define smp_mb()
#define smp_rmb()
#define smp_wmb()

//要防止多进程多线程并发访问fifo

static bool is_power_of_2(uint32_t x);
static uint32_t roundup_pow_of_two(uint32_t x);

uint32_t fifo_contiguous_space(fifo_t *fifo)
{
    if (fifo->wptr >= fifo->rptr)
    {
        return fifo->size - fifo->wptr;
    }
    else
    {
        return fifo->rptr - fifo->wptr;
    }
}

fifo_t *fifo_init(unsigned char *buffer, unsigned int size)
{
    fifo_t *fifo;
    /* size must be a power of 2 */
    ASSERT(!is_power_of_2(size));
    fifo = MALLOC(sizeof(fifo_t));
    if (!fifo)
        return NULL;
    fifo->buffer = buffer;
    fifo->size = size;
    fifo->wptr = fifo->rptr = 0;
    return fifo;
}

fifo_t *fifo_alloc(unsigned int size)
{
    unsigned char *buffer;
    fifo_t *ret;
    //fifo->size的值总是在调用者传进来的size参数的基础上向2的幂扩展
    //对fifo->size取模运算可以转化为与运算.fifo->wptr % fifo->size 可以转化为 fifo->wptr & (fifo->size – 1)
    if (!is_power_of_2(size))
    {
        ASSERT(size > 0x80000000);
        size = roundup_pow_of_two(size);
    }
    buffer = MALLOC(size);
    if (!buffer)
        return NULL;
    ret = fifo_init(buffer, size);

    if (!ret)
        FREE(buffer);
    return ret;
}

void fifo_reset(fifo_t *fifo)
{
    fifo->rptr = fifo->wptr = 0;
}
fifo_t *fifo_free(fifo_t *fifo)
{
    FREE(fifo->buffer);
    FREE(fifo);
}

bool fifo_full(fifo_t *fifo)
{
    return (fifo->size - fifo->wptr + fifo->rptr) ? false:true;
}

bool fifo_empty(fifo_t *fifo)
{
    return ((fifo->wptr==fifo->rptr) && (fifo->rptr == 0)) ? true:false;
}

unsigned int __fifo_put(fifo_t *fifo, const unsigned char *buffer, unsigned int len)
{
    unsigned int l;
    //buffer中空的长度
    len = min(len, fifo->size - fifo->wptr + fifo->rptr);
    printf("[%s] 0 size=%d wptr=%d rptr=%d len=%d\n", __func__, fifo->size, fifo->wptr,fifo->rptr, len);

    // len = min(len, fifo_contiguous_space(fifo));
    /*
     * Ensure that we sample the fifo->rptr index -before- we
     * start putting bytes into the fifo.
     */
    smp_mb();
    /* first put the data starting from fifo->wptr to buffer end */
    l = min(len, fifo->size - (fifo->wptr & (fifo->size - 1)));
    printf("[%s] 0 wptr=%d l=%d\n", __func__, fifo->wptr, l);
    memcpy(fifo->buffer + (fifo->wptr & (fifo->size - 1)), buffer, l);
    /* then put the rest (if any) at the beginning of the buffer */
    memcpy(fifo->buffer, buffer + l, len - l);

    /*
     * Ensure that we add the bytes to the fifo -before-
     * we update the fifo->wptr index.
     */
    smp_wmb();
    printf("[%s] 1 wptr=%d len=%d\n", __func__, fifo->wptr, len);
    //kfifo的巧妙之处在于in和out定义为无符号类型，在put和get时，in和out都是增加，当达到最大值时，产生溢出，使得从0开始，进行循环使用
    fifo->wptr += len; //每次累加，到达最大值后溢出，自动转为0
    printf("[%s] 2 wptr=%d len=%d\n", __func__, fifo->wptr, len);
    return len;
}

unsigned int __fifo_get(fifo_t *fifo, unsigned char *buffer, unsigned int len)
{
    unsigned int l;
    //有数据的缓冲区的长度
    len = min(len, fifo->wptr - fifo->rptr);
    printf("[%s]-- 0 wptr=%d rptr=%d len=%d wptr-rptr=%d min(5, -128)=%u\n", __func__, fifo->wptr,fifo->rptr, len, fifo->wptr - fifo->rptr,min(5, -128));

    /*
     * Ensure that we sample the fifo->wptr index -before- we
     * start removing bytes from the fifo.
     */
    smp_rmb();
    /* first get the data from fifo->rptr until the end of the buffer */
    l = min(len, fifo->size - (fifo->rptr & (fifo->size - 1)));

    memcpy(buffer, fifo->buffer + (fifo->rptr & (fifo->size - 1)), l);
    /* then get the rest (if any) from the beginning of the buffer */
    memcpy(buffer + l, fifo->buffer, len - l);
    /*
     * Ensure that we remove the bytes from the fifo -before-
     * we update the fifo->rptr index.
     */
    smp_mb();
    printf("[%s] 1 rptr=%d len=%d\n", __func__, fifo->rptr, len);
    fifo->rptr += len; //每次累加，到达最大值后溢出，自动转为0
    printf("[%s] 2 rptr=%d len=%d\n", __func__, fifo->rptr, len);
    return len;
}

unsigned int fifo_put(fifo_t *fifo, const unsigned char *buffer, unsigned int len)
{
    unsigned long flags;
    unsigned int ret;
    enter_critical_section(flags);
    ret = __fifo_put(fifo, buffer, len);
    exit_critical_section(flags);
    return ret;
}

unsigned int fifo_get(fifo_t *fifo, unsigned char *buffer, unsigned int len)
{
    unsigned long flags;
    unsigned int ret;
    enter_critical_section(flags);
    ret = __fifo_get(fifo, buffer, len);
    //当fifo->wptr == fifo->rptr时，buufer为空
    if (fifo->wptr == fifo->rptr)
        fifo->wptr = fifo->rptr = 0;
    exit_critical_section(flags);
    return ret;
}
unsigned int fifo_data_len(fifo_t *fifo)
{
    return (fifo->wptr - fifo->rptr);
}
unsigned int fifo_free_len(fifo_t *fifo)
{
    return (fifo->wptr - fifo->rptr);
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
    uint32_t b = 0;

    for (int i = 0; i < 32; i++)
    {
        b = 1UL << i;

        if (x <= b)
        {
            break;
        }
    }

    return b;
}
