#ifndef __SERIAL_H__
#define __SERIAL_H__

void serial_init(void);
void serial_write(uint8_t *buffer, uint32_t length);

#endif // __SERIAL_H__
