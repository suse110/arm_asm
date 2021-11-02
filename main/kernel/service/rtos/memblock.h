#ifndef __MEMBLOCK_H__
#define __MEMBLOCK_H__
#include "event.h"
#include "list.h"

typedef struct
{
    // 事件控制块
    event_t event;

    // 存储块的首地址
    void *mem_start;

    // 每个存储块的大小
    uint32_t block_size;

    // 总的存储块的个数
    uint32_t max_count;

    // 存储块列表
    list_t block_list;
} memblock_t;

typedef struct
{
    // 当前存储块的计数
    uint32_t count;

    // 允许的最大计数
    uint32_t max_count;

    // 每个存储块的大小
    uint32_t block_size;

    // 当前等待的任务计数
    uint32_t taskCount;
} memblock_info_t;

void memblock_init(memblock_t *memblock, uint8_t *mem_start, uint32_t block_size, uint32_t block_cnt);
uint32_t memblock_wait(memblock_t *memblock, uint8_t **mem, uint32_t wait_ticks);
uint32_t memblock_no_wait_get(memblock_t *memblock, void **mem);
void memblock_notify(memblock_t *memblock, uint8_t *mem);
void memblock_get_info(memblock_t *memblock, memblock_info_t *info);
uint32_t memblock_destroy(memblock_t *memblock);
#endif // __MEMBLOCK_H__
