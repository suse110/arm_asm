#include "serial.h"
#include "main.h"
#ifdef HAL_DRIVER_ENABLE
/* UART handler declaration */
UART_HandleTypeDef UartHandle;
#endif
#ifdef __GNUC__
/* With GCC, small printf (option LD Linker->Libraries->Small printf
   set to 'Yes') calls __io_putchar() */
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#define GETCHAR_PROTOTYPE int __io_getchar(void)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */

#define USART1_BASE_ADDR 0x40011000
#define USART2_BASE_ADDR 0x40004400
#define USART_DR_OFFSET 0x04

#define USART_DR_ADDR (USART1_BASE_ADDR + USART_DR_OFFSET)

/**
 * @brief  Retargets the C library printf function to the USART.
 * @param  None
 * @retval None
 */
PUTCHAR_PROTOTYPE
{
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  // HAL_UART_Transmit(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF);
  *(volatile unsigned char *)(USART_DR_ADDR) = ch;
  return ch;
}
GETCHAR_PROTOTYPE
{
  char ch;
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  // HAL_UART_Receive(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF);
  ch = *(volatile unsigned char *)(USART_DR_ADDR);
  return ch;
}

void serial_write(uint8_t *pData, uint16_t Size)
{
  while (Size--)
  {
    __io_putchar(*pData++);
  }
}
void serial_read(uint8_t *pData, uint16_t Size)
{
  while (Size--)
  {
    *pData++ = (uint8_t *)__io_getchar();
  }
}
