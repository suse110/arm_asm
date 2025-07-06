#ifndef __SERIAL_H__
#define __SERIAL_H__
#include <stdint.h>

void serial_init(void) ;
void serial_deinit(void) ;
void serial_write(uint8_t *pdata, uint16_t size);
void serial_read(uint8_t *pdata, uint16_t size);


#endif // __SERIAL_H__
