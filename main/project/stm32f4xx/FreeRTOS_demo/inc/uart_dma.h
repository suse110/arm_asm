/* SPDX-License-Identifier: GPL-2.0 */
#ifndef _UART_DMA_H_
#define _UART_DMA_H_

#include <stdint.h>
#include <stdbool.h>
#include "stm32f4xx_hal.h"

/* Buffer Sizes - Adjust based on application needs */
#define TX_BUF_SIZE 2048
#define RX_BUF_SIZE 512

/* DMA UART Handle Structure */
struct uart_dma {
    /* TX Resources */
    uint8_t tx_buf[TX_BUF_SIZE];
    volatile uint16_t tx_head;
    volatile uint16_t tx_tail;
    volatile bool tx_dma_active;
    
    /* RX Resources */
    uint8_t rx_buf[2][RX_BUF_SIZE]; /* Double Buffer */
    volatile uint8_t rx_active_buf;
    void (*rx_callback)(uint8_t *data, uint16_t len);
    
    /* Hardware Handles */
    UART_HandleTypeDef *huart;
    DMA_HandleTypeDef *hdma_tx;
    DMA_HandleTypeDef *hdma_rx;
};

/* Public API */
void uart_dma_init(struct uart_dma *ud, UART_HandleTypeDef *huart, 
                  DMA_HandleTypeDef *hdma_tx, DMA_HandleTypeDef *hdma_rx);
bool uart_dma_send(struct uart_dma *ud, const uint8_t *data, uint16_t len);
void uart_dma_set_rx_callback(struct uart_dma *ud, 
                            void (*cb)(uint8_t *, uint16_t));
void uart_dma_irq_handler(struct uart_dma *ud);

#endif /* _UART_DMA_H_ */