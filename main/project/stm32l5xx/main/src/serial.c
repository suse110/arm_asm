#include "serial.h"
#include "main.h"
/* UART handler declaration */
UART_HandleTypeDef hlpuart1;

#ifdef __GNUC__
  /* With GCC, small printf (option LD Linker->Libraries->Small printf
     set to 'Yes') calls __io_putchar() */
  #define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
  #define GETCHAR_PROTOTYPE int __io_getchar(void)
#else
  #define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */


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
  hlpuart1.Instance = LPUART1;
  hlpuart1.Init.BaudRate = 9600;
  hlpuart1.Init.WordLength = UART_WORDLENGTH_8B;
  hlpuart1.Init.StopBits = UART_STOPBITS_1;
  hlpuart1.Init.Parity = UART_PARITY_NONE;
  hlpuart1.Init.Mode = UART_MODE_TX_RX;
  hlpuart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  //hlpuart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  //hlpuart1.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  //hlpuart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  //hlpuart1.FifoMode = UART_FIFOMODE_DISABLE;
  hlpuart1.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&hlpuart1) != HAL_OK)
  {
    Error_Handler();
  }
  
}

/**
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */
PUTCHAR_PROTOTYPE
{
  /* Place your implementation of fputc here */
  /* e.g. write a character to the USART3 and Loop until the end of transmission */
  HAL_UART_Transmit(&hlpuart1, (uint8_t *)&ch, 1, 0xFFFF);

  return ch;
}

GETCHAR_PROTOTYPE
{
  char ch;
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  HAL_UART_Receive(&hlpuart1, (uint8_t *)&ch, 1, 0xFFFF); 

  return ch;
}