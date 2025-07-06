#include "stm32f4xx_hal.h"
#include "serial.h"
// #include "main.h"
#include "ringbuffer.h"

typedef struct {
  ringbuffer_t txbuf;
  ringbuffer_t rxbuf;

  UART_HandleTypeDef UartHandle;
  DMA_HandleTypeDef UartTxDmaHandle;
  DMA_HandleTypeDef UartRxDmaHandle;

} serial_t;

serial_t SerialHandle;


/* DMA Stream parameters definitions. You can modify these parameters to select
   a different DMA Stream and/or channel.
   But note that only DMA2 Streams are capable of Memory to Memory transfers. */
#define UART_TX_DMA_STREAM               DMA1_Stream6
#define UART_TX_DMA_CHANNEL              DMA_CHANNEL_4
#define UART_TX_DMA_STREAM_IRQ           DMA1_Stream6_IRQn
#define UART_TX_DMA_STREAM_IRQHANDLER    DMA1_Stream6_IRQHandler

#define UART_RX_DMA_STREAM               DMA1_Stream5
#define UART_RX_DMA_CHANNEL              DMA_CHANNEL_4
#define UART_RX_DMA_STREAM_IRQ           DMA1_Stream5_IRQn
#define UART_RX_DMA_STREAM_IRQHANDLER    DMA1_Stream5_IRQHandler

/* Definition for USARTx clock resources */
#define USARTx                           USART2
#define USARTx_CLK_ENABLE()              __HAL_RCC_USART2_CLK_ENABLE();
#define DMAx_CLK_ENABLE()                __HAL_RCC_DMA1_CLK_ENABLE()
#define USARTx_RX_GPIO_CLK_ENABLE()      __HAL_RCC_GPIOA_CLK_ENABLE()
#define USARTx_TX_GPIO_CLK_ENABLE()      __HAL_RCC_GPIOA_CLK_ENABLE()

#define USARTx_FORCE_RESET()             __HAL_RCC_USART2_FORCE_RESET()
#define USARTx_RELEASE_RESET()           __HAL_RCC_USART2_RELEASE_RESET()

/* Definition for USARTx Pins */
#define USARTx_TX_PIN                    GPIO_PIN_2
#define USARTx_TX_GPIO_PORT              GPIOA
#define USARTx_TX_AF                     GPIO_AF7_USART2
#define USARTx_RX_PIN                    GPIO_PIN_3
#define USARTx_RX_GPIO_PORT              GPIOA
#define USARTx_RX_AF                     GPIO_AF7_USART2

/* Definition for USARTx's DMA */
#define USARTx_TX_DMA_CHANNEL            DMA_CHANNEL_4
#define USARTx_TX_DMA_STREAM             DMA1_Stream6
#define USARTx_RX_DMA_CHANNEL            DMA_CHANNEL_4
#define USARTx_RX_DMA_STREAM             DMA1_Stream5

/* Definition for USARTx's NVIC */
#define USARTx_DMA_TX_IRQn               DMA1_Stream6_IRQn
#define USARTx_DMA_RX_IRQn               DMA1_Stream5_IRQn
#define USARTx_DMA_TX_IRQHandler         DMA1_Stream6_IRQHandler
#define USARTx_DMA_RX_IRQHandler         DMA1_Stream5_IRQHandler
#define USARTx_IRQn                      USART2_IRQn
#define USARTx_IRQHandler                USART2_IRQHandler


#define UART_TX_BUFFER_SIZE                     1024
#define UART_RX_BUFFER_SIZE                     1024

#define UART_TX_DMA_BUFFER_SIZE                 1024
#define UART_RX_DMA_BUFFER_SIZE                 1024


uint8_t uart_tx_dma_buffer[UART_TX_DMA_BUFFER_SIZE];
uint8_t uart_rx_dma_buffer[UART_RX_DMA_BUFFER_SIZE];

uint8_t uart_tx_buffer[UART_TX_BUFFER_SIZE];
uint8_t uart_rx_buffer[UART_RX_BUFFER_SIZE];

#define SERIAL_BAUDRATE 256000

/* Exported macro ------------------------------------------------------------*/
#define COUNTOF(__BUFFER__)   (sizeof(__BUFFER__) / sizeof(*(__BUFFER__)))
#define ARRAY_LEN(x) COUNTOF(x)

#ifdef __GNUC__
  /* With GCC, small printf (option LD Linker->Libraries->Small printf
     set to 'Yes') calls __io_putchar() */
  #define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
  #define GETCHAR_PROTOTYPE int __io_getchar(void)
#else
  #define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */

void UART_TX_DMA_STREAM_IRQHANDLER(void)
{
  HAL_DMA_IRQHandler(&SerialHandle.UartTxDmaHandle);
}
void UART_RX_DMA_STREAM_IRQHANDLER(void)
{
  HAL_DMA_IRQHandler(&SerialHandle.UartRxDmaHandle);
}

/**
 * \brief           Length of currently active TX DMA transfer
 */
volatile size_t
uart_tx_dma_current_len;

/**
 * \brief           Check for new data received with DMA
 *
 * User must select context to call this function from:
 * - Only interrupts (DMA HT, DMA TC, UART IDLE) with same preemption priority level
 * - Only thread context (outside interrupts)
 *
 * If called from both context-es, exclusive access protection must be implemented
 * This mode is not advised as it usually means architecture design problems
 *
 * When IDLE interrupt is not present, application must rely only on thread context,
 * by manually calling function as quickly as possible, to make sure
 * data are read from raw buffer and processed.
 *
 * Not doing reads fast enough may cause DMA to overflow unread received bytes,
 * hence application will lost useful data.
 *
 * Solutions to this are:
 * - Improve architecture design to achieve faster reads
 * - Increase raw buffer size and allow DMA to write more data before this function is called
 */
void serial_rx_check(void) {
    static size_t old_pos;
    size_t pos;

    /* Calculate current position in buffer and check for new data available */
    pos = SerialHandle.rxbuf.size - SerialHandle.UartRxDmaHandle.Instance->NDTR;
    if (pos != old_pos) {                       /* Check change in received data */
        if (pos > old_pos) {                    /* Current position is over previous one */
            /*
             * Processing is done in "linear" mode.
             *
             * Application processing is fast with single data block,
             * length is simply calculated by subtracting pointers
             *
             * [   0   ]
             * [   1   ] <- old_pos |------------------------------------|
             * [   2   ]            |                                    |
             * [   3   ]            | Single block (len = pos - old_pos) |
             * [   4   ]            |                                    |
             * [   5   ]            |------------------------------------|
             * [   6   ] <- pos
             * [   7   ]
             * [ N - 1 ]
             */
            rb_write(&SerialHandle.rxbuf, &uart_rx_dma_buffer[old_pos], pos - old_pos);
        } else {
            /*
             * Processing is done in "overflow" mode..
             *
             * Application must process data twice,
             * since there are 2 linear memory blocks to handle
             *
             * [   0   ]            |---------------------------------|
             * [   1   ]            | Second block (len = pos)        |
             * [   2   ]            |---------------------------------|
             * [   3   ] <- pos
             * [   4   ] <- old_pos |---------------------------------|
             * [   5   ]            |                                 |
             * [   6   ]            | First block (len = N - old_pos) |
             * [   7   ]            |                                 |
             * [ N - 1 ]            |---------------------------------|
             */
            rb_write(&SerialHandle.rxbuf, &uart_rx_dma_buffer[old_pos], ARRAY_LEN(uart_rx_dma_buffer) - old_pos);
            if (pos > 0) {
                rb_write(&SerialHandle.rxbuf, &uart_rx_dma_buffer[0], pos);
            }
        }
        old_pos = pos;                          /* Save current position as old for next transfers */
    }
}


/**
 * \brief           Check if DMA is active and if not try to send data
 *
 * This function can be called either by application to start data transfer
 * or from DMA TX interrupt after previous transfer just finished
 *
 * \return          `1` if transfer just started, `0` if on-going or no data to transmit
 */
uint8_t serial_start_tx_dma_transfer(void) {
    uint32_t primask;
    uint8_t started = 0;

    /*
     * First check if transfer is currently in-active,
     * by examining the value of uart_tx_dma_current_len variable.
     *
     * This variable is set before DMA transfer is started and cleared in DMA TX complete interrupt.
     *
     * It is not necessary to disable the interrupts before checking the variable:
     *
     * When uart_tx_dma_current_len == 0
     *    - This function is called by either application or TX DMA interrupt
     *    - When called from interrupt, it was just reset before the call,
     *         indicating transfer just completed and ready for more
     *    - When called from an application, transfer was previously already in-active
     *         and immediate call from interrupt cannot happen at this moment
     *
     * When uart_tx_dma_current_len != 0
     *    - This function is called only by an application.
     *    - It will never be called from interrupt with uart_tx_dma_current_len != 0 condition
     *
     * Disabling interrupts before checking for next transfer is advised
     * only if multiple operating system threads can access to this function w/o
     * exclusive access protection (mutex) configured,
     * or if application calls this function from multiple interrupts.
     *
     * This example assumes worst use case scenario,
     * hence interrupts are disabled prior every check
     */
    primask = __get_PRIMASK();
    __disable_irq();
    if (uart_tx_dma_current_len == 0 && (uart_tx_dma_current_len = RB_CONTIGUOUS_DATA_SIZE(&SerialHandle.txbuf)) > 0) {
        /*##-7- Start the DMA transfer using the interrupt mode ####################*/
        /* Configure the source, destination and buffer size DMA fields and Start DMA Stream transfer */
        /* Enable All the DMA interrupts */
        if(HAL_DMA_Start_IT(&SerialHandle.UartTxDmaHandle, (uint32_t)&SerialHandle.UartHandle.Instance->DR, (uint32_t)RB_CONTIGUOUS_DATA_START_ADDR(&SerialHandle.txbuf), SerialHandle.txbuf.size) != HAL_OK) {
          Error_Handler();
        }

        started = 1;
    }
    __set_PRIMASK(primask);
    return started;
}


static void UartTxTransferComplete(DMA_HandleTypeDef *DmaHandle)
{
    uart_tx_dma_current_len = 0;           /* Clear length variable */
    serial_start_tx_dma_transfer();          /* Start sending more data */
}
static void UartRxTransferComplete(DMA_HandleTypeDef *DmaHandle)
{
    serial_rx_check();
}
static void UartTxTransferError(DMA_HandleTypeDef *DmaHandle)
{

}
static void UartRxTransferError(DMA_HandleTypeDef *DmaHandle)
{

}

void serial_write(uint8_t *pData, uint16_t Size)
{
    HAL_UART_Transmit(&SerialHandle.UartHandle, pData, Size, 0xFFFF);
}
void serial_read(uint8_t *pData, uint16_t Size)
{
    HAL_UART_Receive(&SerialHandle.UartHandle, pData, Size, 0xFFFF);
}

void serial_gpio_init(void)
{
  GPIO_InitTypeDef  GPIO_InitStruct;

  /*##-1- Enable peripherals and GPIO Clocks #################################*/
  /* Enable GPIO TX/RX clock */
  USARTx_TX_GPIO_CLK_ENABLE();
  USARTx_RX_GPIO_CLK_ENABLE();
  /* Enable USART2 clock */
  USARTx_CLK_ENABLE();

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
}

/**
  * @brief  Configure the DMA controller according to the Stream parameters
  *         defined in main.h file
  * @note  This function is used to :
  *        -1- Enable DMA1 clock
  *        -2- Select the DMA functional Parameters
  *        -3- Select the DMA instance to be used for the transfer
  *        -4- Select Callbacks functions called after Transfer complete and
               Transfer error interrupt detection
  *        -5- Initialize the DMA stream
  *        -6- Configure NVIC for DMA transfer complete/error interrupts
  *        -7- Start the DMA transfer using the interrupt mode
  * @param  None
  * @retval None
  */
void serial_dma_init()
{
  UART_HandleTypeDef *huart = &SerialHandle.UartHandle;
  /* Enable DMA1 clock */
  DMAx_CLK_ENABLE();

#if 1
  /*##-3- Configure the DMA streams ##########################################*/
  /* Configure the DMA handler for Transmission process */
  SerialHandle.UartTxDmaHandle.Instance                 = USARTx_TX_DMA_STREAM;
  SerialHandle.UartTxDmaHandle.Init.Channel             = USARTx_TX_DMA_CHANNEL;
  SerialHandle.UartTxDmaHandle.Init.Direction           = DMA_MEMORY_TO_PERIPH;  /* M2M transfer mode                */
  SerialHandle.UartTxDmaHandle.Init.PeriphInc           = DMA_PINC_ENABLE;       /* Peripheral increment mode Enable */
  SerialHandle.UartTxDmaHandle.Init.MemInc              = DMA_MINC_ENABLE;       /* Memory increment mode Enable     */
  SerialHandle.UartTxDmaHandle.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;   /* Peripheral data alignment : byte */
  SerialHandle.UartTxDmaHandle.Init.MemDataAlignment    = DMA_MDATAALIGN_BYTE;   /* memory data alignment : byte     */
  SerialHandle.UartTxDmaHandle.Init.Mode                = DMA_CIRCULAR;          /* Circular DMA mode                  */
  SerialHandle.UartTxDmaHandle.Init.Priority            = DMA_PRIORITY_LOW;      /* priority level : low            */
  SerialHandle.UartTxDmaHandle.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;  /* FIFO mode disabled                */
  SerialHandle.UartTxDmaHandle.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_1QUARTERFULL;  /* FIFO threshold: 1/4 full   */
  SerialHandle.UartTxDmaHandle.Init.MemBurst            = DMA_MBURST_INC4;       /* Memory burst                     */
  SerialHandle.UartTxDmaHandle.Init.PeriphBurst         = DMA_PBURST_INC4;       /* Peripheral burst                 */
  HAL_DMA_Init(&SerialHandle.UartTxDmaHandle);
  /* Associate the initialized DMA handle to the the UART handle */
  __HAL_LINKDMA(huart, hdmatx, SerialHandle.UartTxDmaHandle);

  /*##-5- Select Callbacks functions called after Transfer complete and Transfer error */
  HAL_DMA_RegisterCallback(&SerialHandle.UartTxDmaHandle, HAL_DMA_XFER_CPLT_CB_ID, UartTxTransferComplete);
  HAL_DMA_RegisterCallback(&SerialHandle.UartTxDmaHandle, HAL_DMA_XFER_ERROR_CB_ID, UartTxTransferError);


  /* Configure the DMA handler for Transmission process */
  SerialHandle.UartRxDmaHandle.Instance                 = USARTx_RX_DMA_STREAM;
  /*##-2- Select the DMA functional Parameters ###############################*/
  SerialHandle.UartRxDmaHandle.Init.Channel             = USARTx_RX_DMA_CHANNEL;              /* DMA_CHANNEL_0                    */
  SerialHandle.UartRxDmaHandle.Init.Direction           = DMA_PERIPH_TO_MEMORY;             /* M2M transfer mode                */
  SerialHandle.UartRxDmaHandle.Init.PeriphInc           = DMA_PINC_DISABLE;                  /* Peripheral increment mode Enable */
  SerialHandle.UartRxDmaHandle.Init.MemInc              = DMA_MINC_ENABLE;                  /* Memory increment mode Enable     */
  SerialHandle.UartRxDmaHandle.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;              /* Peripheral data alignment : Word */
  SerialHandle.UartRxDmaHandle.Init.MemDataAlignment    = DMA_MDATAALIGN_BYTE;              /* memory data alignment : Word     */
  SerialHandle.UartRxDmaHandle.Init.Mode                = DMA_CIRCULAR;                       /* Normal DMA mode                  */
  SerialHandle.UartRxDmaHandle.Init.Priority            = DMA_PRIORITY_LOW;                /* priority level : low            */
  SerialHandle.UartRxDmaHandle.Init.FIFOMode            = DMA_FIFOMODE_ENABLE;              /* FIFO mode enabled                */
  SerialHandle.UartRxDmaHandle.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_1QUARTERFULL;  /* FIFO threshold: 1/4 full   */
  SerialHandle.UartRxDmaHandle.Init.MemBurst            = DMA_MBURST_INC4;                /* Memory burst                     */
  SerialHandle.UartRxDmaHandle.Init.PeriphBurst         = DMA_PBURST_INC4;                /* Peripheral burst                 */
  HAL_DMA_Init(&SerialHandle.UartRxDmaHandle);
  /* Associate the initialized DMA handle to the the UART handle */
  __HAL_LINKDMA(huart, hdmarx, SerialHandle.UartRxDmaHandle);


  /*##-5- Select Callbacks functions called after Transfer complete and Transfer error */
  HAL_DMA_RegisterCallback(&SerialHandle.UartRxDmaHandle, HAL_DMA_XFER_CPLT_CB_ID, UartRxTransferComplete);
  HAL_DMA_RegisterCallback(&SerialHandle.UartRxDmaHandle, HAL_DMA_XFER_ERROR_CB_ID, UartRxTransferError);

  /*##-4- Configure the NVIC for DMA #########################################*/
  /* NVIC configuration for DMA transfer complete interrupt (USARTx_TX) */
  HAL_NVIC_SetPriority(USARTx_DMA_TX_IRQn, 0, 1);
  HAL_NVIC_EnableIRQ(USARTx_DMA_TX_IRQn);

  /* NVIC configuration for DMA transfer complete interrupt (USARTx_RX) */
  HAL_NVIC_SetPriority(USARTx_DMA_RX_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(USARTx_DMA_RX_IRQn);


  /*##-7- Start the DMA transfer using the interrupt mode ####################*/
  /* Configure the source, destination and buffer size DMA fields and Start DMA Stream transfer */
  /* Enable All the DMA interrupts */
  if(HAL_DMA_Start_IT(&SerialHandle.UartRxDmaHandle, (uint32_t)uart_rx_dma_buffer, (uint32_t)&huart->Instance->DR, SerialHandle.rxbuf.size) != HAL_OK) {
    Error_Handler();
  }
#endif
}

/**
  * @brief UART MSP De-Initialization
  *        This function frees the hardware resources used in this example:
  *          - Disable the Peripheral's clock
  *          - Revert GPIO, DMA and NVIC configuration to their default state
  * @param huart: UART handle pointer
  * @retval None
  */
void serial_deinit(void)
{
  /*##-1- Reset peripherals ##################################################*/
  USARTx_FORCE_RESET();
  USARTx_RELEASE_RESET();

  /*##-2- Disable peripherals and GPIO Clocks ################################*/
  /* Configure UART Tx as alternate function  */
  HAL_GPIO_DeInit(USARTx_TX_GPIO_PORT, USARTx_TX_PIN);
  /* Configure UART Rx as alternate function  */
  HAL_GPIO_DeInit(USARTx_RX_GPIO_PORT, USARTx_RX_PIN);

  /*##-3- Disable the DMA Streams ############################################*/
  /* De-Initialize the DMA Stream associate to transmission process */
  HAL_DMA_DeInit(&SerialHandle.UartTxDmaHandle);
  /* De-Initialize the DMA Stream associate to reception process */
  HAL_DMA_DeInit(&SerialHandle.UartRxDmaHandle);

  HAL_UART_DeInit(&SerialHandle.UartHandle);

  /*##-4- Disable the NVIC for DMA ###########################################*/
  HAL_NVIC_DisableIRQ(USARTx_DMA_TX_IRQn);
  HAL_NVIC_DisableIRQ(USARTx_DMA_RX_IRQn);

  HAL_NVIC_DisableIRQ(USARTx_IRQn);
}


void serial_init(void)
{
  rb_init(&SerialHandle.txbuf, uart_tx_buffer, UART_TX_BUFFER_SIZE);
  rb_init(&SerialHandle.rxbuf, uart_rx_buffer, UART_RX_BUFFER_SIZE);

  /*##-1- Configure the UART peripheral ######################################*/
  SerialHandle.UartHandle.Instance          = USARTx;

  SerialHandle.UartHandle.Init.BaudRate     = SERIAL_BAUDRATE;
  SerialHandle.UartHandle.Init.WordLength   = UART_WORDLENGTH_8B;
  SerialHandle.UartHandle.Init.StopBits     = UART_STOPBITS_1;
  SerialHandle.UartHandle.Init.Parity       = UART_PARITY_NONE;
  SerialHandle.UartHandle.Init.HwFlowCtl    = UART_HWCONTROL_NONE;
  SerialHandle.UartHandle.Init.Mode         = UART_MODE_TX_RX;
  SerialHandle.UartHandle.Init.OverSampling = UART_OVERSAMPLING_16;

  if(HAL_UART_Init(&SerialHandle.UartHandle) != HAL_OK) {
    /* Initialization Error */
    Error_Handler();
  }
  
  serial_gpio_init();
  serial_dma_init();
  /* NVIC configuration for USART TC interrupt */
  HAL_NVIC_SetPriority(USARTx_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(USARTx_IRQn);
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
  HAL_UART_Transmit(&SerialHandle.UartHandle, (uint8_t *)&ch, 1, 0xFFFF);

  return ch;
}
GETCHAR_PROTOTYPE
{
  char ch;
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  HAL_UART_Receive(&SerialHandle.UartHandle, (uint8_t *)&ch, 1, 0xFFFF);

  return ch;
}