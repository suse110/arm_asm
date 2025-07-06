/* SPDX-License-Identifier: GPL-2.0 */
#include "uart_dma.h"
#include <string.h>

/* Private Functions */
static void start_tx_transfer(struct uart_dma *ud);
static inline void disable_irq(void);
static inline void enable_irq(void);

/**
 * uart_dma_init - Initialize DMA UART module
 * @ud: DMA UART handle
 * @huart: UART hardware handle
 * @hdma_tx: TX DMA handle
 * @hdma_rx: RX DMA handle
 */
void uart_dma_init(struct uart_dma *ud, UART_HandleTypeDef *huart,
                  DMA_HandleTypeDef *hdma_tx, DMA_HandleTypeDef *hdma_rx)
{
    memset(ud, 0, sizeof(*ud));
    ud->huart = huart;
    ud->hdma_tx = hdma_tx;
    ud->hdma_rx = hdma_rx;
    
    /* Start RX DMA with double buffer */
    HAL_UART_Receive_DMA(ud->huart, ud->rx_buf[0], RX_BUF_SIZE);
    __HAL_UART_ENABLE_IT(ud->huart, UART_IT_IDLE);
}

/**
 * uart_dma_send - Send data via DMA (non-blocking)
 * @ud: DMA UART handle
 * @data: Data buffer
 * @len: Data length
 * Returns: true if queued successfully, false if buffer full
 */
bool uart_dma_send(struct uart_dma *ud, const uint8_t *data, uint16_t len)
{
    bool ret = false;
    disable_irq();
    
    uint16_t free_space = (ud->tx_head >= ud->tx_tail) ?
        (TX_BUF_SIZE - (ud->tx_head - ud->tx_tail) - 1) :
        (ud->tx_tail - ud->tx_head - 1);
    
    if (len <= free_space) {
        /* Handle circular buffer wrap */
        uint16_t first_chunk = TX_BUF_SIZE - ud->tx_head;
        if (first_chunk >= len) {
            memcpy(&ud->tx_buf[ud->tx_head], data, len);
            ud->tx_head = (ud->tx_head + len) % TX_BUF_SIZE;
        } else {
            memcpy(&ud->tx_buf[ud->tx_head], data, first_chunk);
            memcpy(ud->tx_buf, data + first_chunk, len - first_chunk);
            ud->tx_head = len - first_chunk;
        }
        ret = true;
    }
    
    enable_irq();
    
    /* Trigger transmission if DMA is idle */
    if (!ud->tx_dma_active && (ud->tx_head != ud->tx_tail)) {
        start_tx_transfer(ud);
    }
    
    return ret;
}

/**
 * start_tx_transfer - Start next DMA TX transfer chunk
 * @ud: DMA UART handle
 */
static void start_tx_transfer(struct uart_dma *ud)
{
    disable_irq();
    
    if (ud->tx_head == ud->tx_tail || ud->tx_dma_active) {
        enable_irq();
        return;
    }
    
    uint16_t chunk_len;
    if (ud->tx_head > ud->tx_tail) {
        chunk_len = ud->tx_head - ud->tx_tail;
    } else {
        chunk_len = TX_BUF_SIZE - ud->tx_tail;
    }
    
    ud->tx_dma_active = true;
    enable_irq();
    
    HAL_UART_Transmit_DMA(ud->huart, &ud->tx_buf[ud->tx_tail], chunk_len);
}

/**
 * uart_dma_irq_handler - Handle DMA/UART interrupts
 * @ud: DMA UART handle
 */
void uart_dma_irq_handler(struct uart_dma *ud)
{
    /* TX Complete */
    if (__HAL_DMA_GET_FLAG(ud->hdma_tx, DMA_FLAG_TCIF3_7)) {
        __HAL_DMA_CLEAR_FLAG(ud->hdma_tx, DMA_FLAG_TCIF3_7);
        
        disable_irq();
        ud->tx_tail = (ud->tx_tail + ud->hdma_tx->Instance->NDTR) % TX_BUF_SIZE;
        ud->tx_dma_active = false;
        enable_irq();
        
        start_tx_transfer(ud); /* Check for more data */
    }
    
    /* RX Idle */
    if (__HAL_UART_GET_FLAG(ud->huart, UART_FLAG_IDLE)) {
        __HAL_UART_CLEAR_IDLEFLAG(ud->huart);
        
        uint16_t len = RX_BUF_SIZE - __HAL_DMA_GET_COUNTER(ud->hdma_rx);
        if (len > 0 && ud->rx_callback) {
            uint8_t *buf = ud->rx_buf[ud->rx_active_buf ^ 1];
            ud->rx_callback(buf, len);
        }
        
        /* Switch buffer and restart DMA */
        ud->rx_active_buf ^= 1;
        HAL_UART_Receive_DMA(ud->huart, 
                            ud->rx_buf[ud->rx_active_buf], 
                            RX_BUF_SIZE);
    }
}

/* Helper Functions */
static inline void disable_irq(void) {
    __disable_irq();
}

static inline void enable_irq(void) {
    __enable_irq();
}