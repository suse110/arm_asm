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

#define USART1_base_ADDR 0x40011000
#define USART_DR   0x04

void serial_init(void) 
{
  /*##-1- Configure the UART peripheral ######################################*/
  /* Put the USART peripheral in the Asynchronous mode (UART Mode) */
  /* UART1 configured as follow:
      - Word Length = 8 Bits
      - Stop Bit = One Stop bit
      - Parity = ODD parity
      - BaudRate = 9600 baud
      - Hardware flow control disabled (RTS and CTS signals) */
#ifdef HAL_DRIVER_ENABLE
  UartHandle.Instance          = USARTx;
  
  UartHandle.Init.BaudRate     = 921600;
  UartHandle.Init.WordLength   = UART_WORDLENGTH_8B;
  UartHandle.Init.StopBits     = UART_STOPBITS_1;
  UartHandle.Init.Parity       = UART_PARITY_NONE;
  UartHandle.Init.HwFlowCtl    = UART_HWCONTROL_NONE;
  UartHandle.Init.Mode         = UART_MODE_TX_RX;
  UartHandle.Init.OverSampling = UART_OVERSAMPLING_16;
    
  if(HAL_UART_Init(&UartHandle) != HAL_OK) {
    /* Initialization Error */
    Error_Handler(); 
  }
#endif
}

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
  *(volatile unsigned char*)(USART1_base_ADDR + USART_DR) = ch;
  return ch;
}
GETCHAR_PROTOTYPE
{
  char ch;
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  // HAL_UART_Receive(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF); 
  ch = *(volatile unsigned char*)(USART1_base_ADDR + USART_DR);
  return ch;
}