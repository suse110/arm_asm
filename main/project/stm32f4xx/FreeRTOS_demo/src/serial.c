#include "serial.h"
#include "main.h"
#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal_uart.h"
#include "uart_dma.h"
/*
UART配置表（STM32F4系列为例）​​
​UART​	  ​TX Pin​	​RX Pin​  ​DMA Controller​	​TX Stream/Channel​	  ​RX Stream/Channel​	​IRQ Handler​	​      Alternate Function​
USART1	PA9	    PA10	DMA2	        Stream7 / Channel4	Stream5 / Channel4	USART1_IRQHandler	GPIO_AF7_USART1
USART2	PA2	    PA3	    DMA1	        Stream6 / Channel4	Stream5 / Channel4	USART2_IRQHandler	GPIO_AF7_USART2
USART3	PB10	PB11	DMA1	        Stream3 / Channel4	Stream1 / Channel4	USART3_IRQHandler	GPIO_AF7_USART3
UART4	PC10	PC11	DMA1	        Stream4 / Channel4	Stream2 / Channel4	UART4_IRQHandler	GPIO_AF8_UART4
UART5	PC12	PD2	    DMA1	        Stream7 / Channel4	Stream0 / Channel4	UART5_IRQHandler	GPIO_AF8_UART5
USART6	PC6	    PC7	    DMA2	        Stream6 / Channel5	Stream2 / Channel5	USART6_IRQHandler	GPIO_AF8_USART6

中断优先级建议​
​中断​	        推荐优先级	说明
RX DMA Stream	3-4	    高优先级保证数据不丢失
TX DMA Stream	5-6	    低于RX
UART全局中断	 0-2	 处理空闲中断和错误
*/
/* UART handler declaration */
UART_HandleTypeDef UartHandle;
DMA_HandleTypeDef hdma_usart_tx;
DMA_HandleTypeDef hdma_usart_rx;
struct uart_dma uart_dma; 
#ifdef __GNUC__
  /* With GCC, small printf (option LD Linker->Libraries->Small printf
     set to 'Yes') calls __io_putchar() */
  #define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
  #define GETCHAR_PROTOTYPE int __io_getchar(void)
#else
  #define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */
// 缓冲区大小配置
#define UART_RX_BUFFER_SIZE  256
#define UART_TX_BUFFER_SIZE  16*1024
// 环形缓冲区结构
typedef struct {
    uint8_t *buffer;
    uint32_t buf_size;
    volatile uint16_t head;
    volatile uint16_t tail;
} ringbuffer_t;
uint8_t tx_buf[UART_TX_BUFFER_SIZE] = {0};
uint8_t rx_buf[UART_RX_BUFFER_SIZE] = {0};
// RX/TX缓冲区
static ringbuffer_t rx_buffer = {.buffer = rx_buf, .buf_size = UART_RX_BUFFER_SIZE, .head = 0, .tail = 0};
static ringbuffer_t tx_buffer = {.buffer = tx_buf, .buf_size = UART_TX_BUFFER_SIZE, .head = 0, .tail = 0};
void serial_init(void) 
{

  GPIO_InitTypeDef  GPIO_InitStruct;
  
  /*##-1- Enable peripherals and GPIO Clocks #################################*/
  /* Enable GPIO TX/RX clock */
  USARTx_TX_GPIO_CLK_ENABLE();
  USARTx_RX_GPIO_CLK_ENABLE();
  /* Enable USART2 clock */
  USARTx_CLK_ENABLE(); 
  /* Enable DMA1 clock */
  DMAx_CLK_ENABLE();   
  
  /*##-2- Configure peripheral GPIO ##########################################*/  
  /* UART TX GPIO pin configuration  */
  GPIO_InitStruct.Pin       = USARTx_TX_PIN;
  GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull      = GPIO_NOPULL;
  GPIO_InitStruct.Speed     = GPIO_SPEED_FAST;
  GPIO_InitStruct.Alternate = USARTx_TX_AF;
  
  HAL_GPIO_Init(USARTx_TX_GPIO_PORT, &GPIO_InitStruct);
    
  /* UART RX GPIO pin configuration  */
  GPIO_InitStruct.Pin = USARTx_RX_PIN;
  GPIO_InitStruct.Alternate = USARTx_RX_AF;
    
  HAL_GPIO_Init(USARTx_RX_GPIO_PORT, &GPIO_InitStruct);
  /*##-1- Configure the UART peripheral ######################################*/
  /* Put the USART peripheral in the Asynchronous mode (UART Mode) */
  /* UART1 configured as follow:
      - Word Length = 8 Bits
      - Stop Bit = One Stop bit
      - Parity = ODD parity
      - BaudRate = 9600 baud
      - Hardware flow control disabled (RTS and CTS signals) */
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
#ifdef UART_USE_DMA
/* DMA控制器时钟使能 */
    __HAL_RCC_DMA1_CLK_ENABLE();

    /* TX DMA配置 (Memory → UART2) */
    hdma_usart_tx.Instance = DMA1_Stream6;
    hdma_usart_tx.Init.Channel = DMA_CHANNEL_4;  // UART2_TX对应Channel4
    hdma_usart_tx.Init.Direction = DMA_MEMORY_TO_PERIPH;
    hdma_usart_tx.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_usart_tx.Init.MemInc = DMA_MINC_ENABLE;
    hdma_usart_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
    hdma_usart_tx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
    hdma_usart_tx.Init.Mode = DMA_NORMAL;  // 非循环模式（由软件管理）
    hdma_usart_tx.Init.Priority = DMA_PRIORITY_MEDIUM;
    hdma_usart_tx.Init.FIFOMode = DMA_FIFOMODE_ENABLE;
    hdma_usart_tx.Init.FIFOThreshold = DMA_FIFO_THRESHOLD_FULL;
    if (HAL_DMA_Init(&hdma_usart_tx) != HAL_OK) {
        Error_Handler();
    }
    __HAL_LINKDMA(&UartHandle, hdmatx, hdma_usart_tx);

    /* RX DMA配置 (UART2 → Memory) */
    hdma_usart_rx.Instance = DMA1_Stream5;
    hdma_usart_rx.Init.Channel = DMA_CHANNEL_4;  // UART2_RX对应Channel4
    hdma_usart_rx.Init.Direction = DMA_PERIPH_TO_MEMORY;
    hdma_usart_rx.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_usart_rx.Init.MemInc = DMA_MINC_ENABLE;
    hdma_usart_rx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
    hdma_usart_rx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
    hdma_usart_rx.Init.Mode = DMA_CIRCULAR;  // 循环模式（自动切换缓冲区）
    hdma_usart_rx.Init.Priority = DMA_PRIORITY_HIGH;  // RX优先级高于TX
    hdma_usart_rx.Init.FIFOMode = DMA_FIFOMODE_ENABLE;
    hdma_usart_rx.Init.FIFOThreshold = DMA_FIFO_THRESHOLD_HALFFULL;
    if (HAL_DMA_Init(&hdma_usart_rx) != HAL_OK) {
        Error_Handler();
    }
    __HAL_LINKDMA(&UartHandle, hdmarx, hdma_usart_rx);

    /* DMA中断使能 */
    HAL_NVIC_SetPriority(DMA1_Stream5_IRQn, 5, 0);  // RX DMA中断
    HAL_NVIC_SetPriority(DMA1_Stream6_IRQn, 6, 0);  // TX DMA中断
    HAL_NVIC_EnableIRQ(DMA1_Stream5_IRQn);
    HAL_NVIC_EnableIRQ(DMA1_Stream6_IRQn);
#endif
  // 启用中断
  HAL_NVIC_SetPriority(USARTx_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(USARTx_IRQn);

  // 启用接收中断
  __HAL_UART_ENABLE_IT(&UartHandle, UART_IT_RXNE);
  #ifdef UART_USE_DMA
  uart_dma_init(&uart_dma, &UartHandle,&hdma_usart_tx, &hdma_usart_rx);
  #endif

}
// 环形缓冲区辅助函数
static uint16_t ring_buffer_available(ringbuffer_t* buf) {
    return (buf->head >= buf->tail) ? (buf->head - buf->tail) : (buf->buf_size + buf->head - buf->tail);
}

static bool ring_buffer_put(ringbuffer_t* buf, uint8_t data) {
    uint16_t next_head = (buf->head + 1) % buf->buf_size;
    if (next_head == buf->tail) return false; // 缓冲区满
    
    buf->buffer[buf->head] = data;
    buf->head = next_head;
    return true;
}

static bool ring_buffer_get(ringbuffer_t* buf, uint8_t* data) {
    if (buf->head == buf->tail) return false; // 缓冲区空
    
    *data = buf->buffer[buf->tail];
    buf->tail = (buf->tail + 1) % buf->buf_size;
    return true;
}

// 发送单个字节
void serial_send_byte(uint8_t byte) {
    // 等待上一个发送完成
    while (ring_buffer_available(&tx_buffer) == tx_buffer.buf_size - 1) {
         __HAL_UART_ENABLE_IT(&UartHandle, UART_IT_TXE);
    };
    
    // 放入发送缓冲区
    ring_buffer_put(&tx_buffer, byte);
    
    // 启用发送中断
    __HAL_UART_ENABLE_IT(&UartHandle, UART_IT_TXE);
}

// 发送字符串
void serial_send_string(const char* str) {
    while (*str) {
        serial_send_byte(*str++);
    }
}

// 发送缓冲区数据
void serial_send_buffer(const uint8_t* buffer, uint16_t length) {

    for (uint16_t i = 0; i < length; i++) {
        serial_send_byte(buffer[i]);
    }
}

// 接收单个字节
uint8_t serial_read_byte(void) {
    uint8_t data;
    while (!ring_buffer_get(&rx_buffer, &data)); // 阻塞等待数据
    return data;
}

// 接收缓冲区数据
uint16_t serial_read_buffer(uint8_t* buffer, uint16_t length) {
    uint16_t i;
    for (i = 0; i < length; i++) {
        if (!ring_buffer_get(&rx_buffer, &buffer[i])) {
            break;
        }
    }
    return i;
}

// 获取可读数据量
uint16_t serial_available(void) {
    return ring_buffer_available(&rx_buffer);
}

// 检查是否有数据可读
bool serial_data_available(void) {
    return ring_buffer_available(&rx_buffer) > 0;
}
void UART_DMA_IRQHandler(void) {

}
// UART中断处理函数
void UART_IRQHandler(void) {
#ifdef UART_USE_DMA
if (__HAL_UART_GET_FLAG(&UartHandle, UART_FLAG_IDLE)) {
        uart_dma_irq_handler(&uart_dma);
    }
#else
    // 接收中断
    if (__HAL_UART_GET_FLAG(&UartHandle, UART_FLAG_RXNE) != RESET) {
        uint8_t data = (uint8_t)(UartHandle.Instance->DR & 0xFF);
        ring_buffer_put(&rx_buffer, data);
        __HAL_UART_CLEAR_FLAG(&UartHandle, UART_FLAG_RXNE);
        void serial_protocol_process(void);
        serial_protocol_process();
    }

    // 发送中断
    if (__HAL_UART_GET_FLAG(&UartHandle, UART_FLAG_TXE) != RESET) {
        uint8_t data;
        if (ring_buffer_get(&tx_buffer, &data)) {
            UartHandle.Instance->DR = data;
        } else {
            // 发送缓冲区空，禁用发送中断
            __HAL_UART_DISABLE_IT(&UartHandle, UART_IT_TXE);
        }
    }
#endif
}
void srial_write_polling(uint8_t *pData, uint16_t Size)
{
    HAL_UART_Transmit(&UartHandle, pData, Size, 0xFFFF);
}
void serial_write(uint8_t *pData, uint16_t Size)
{
    serial_send_buffer(pData, Size);
}
void serial_read(uint8_t *pData, uint16_t Size)
{
    // HAL_UART_Receive(&UartHandle, pData, Size, 0xFFFF);
    serial_read_buffer(pData, Size);
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
  serial_write((uint8_t *)&ch, 1); 

  return ch;
}
GETCHAR_PROTOTYPE
{
  char ch;
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  ch = serial_read_byte();

  return ch;
}

