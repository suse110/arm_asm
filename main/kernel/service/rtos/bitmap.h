#ifndef __BITMAP_H__
#define __BITMAP_H__

#include <stdint.h>

typedef struct 
{
	uint32_t bitmap;
} bitmap_t;

void bitmap_init(bitmap_t *bitmap);
uint32_t bitmap_pos_count(void);
void bitmap_set_bit(bitmap_t *bitmap, uint32_t pos);
void bitmap_clear_bit(bitmap_t *bitmap, uint32_t pos);
uint32_t bitmap_get_first(bitmap_t *bitmap);
uint32_t bitmap_get_value(bitmap_t *bitmap);
#endif // __BITMAP_H__
