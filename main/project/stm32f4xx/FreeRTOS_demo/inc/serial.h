#ifndef __SERIAL_H__
#define __SERIAL_H__
#include <stdint.h>
#include <stdbool.h>
// #define UART_USE_DMA
void serial_init(void) ;
void serial_write(uint8_t *pData, uint16_t Size);
void serial_read(uint8_t *pData, uint16_t Size);
void srial_write_polling(uint8_t *pData, uint16_t Size);

void serial_send_byte(uint8_t byte);
void serial_send_string(const char* str);
void serial_send_buffer(const uint8_t* buffer, uint16_t length);
uint8_t serial_read_byte(void);
uint16_t serial_read_buffer(uint8_t* buffer, uint16_t length);
uint16_t serial_available(void);
bool serial_data_available(void);
void UART_IRQHandler(void);
void UART_DMA_IRQHandler(void);
#endif // __SERIAL_H__
