# STM32 DMA


## DMA main features

* Dual AHB master bus architecture, one dedicated to memory accesses and one dedicated to peripheral accesses
* AHB slave programming interface supporting only 32-bit accesses
* 8 streams for each DMA controller, up to 8 channels (requests) per stream
* Four-word depth 32 first-in, first-out memory buffers (FIFOs) per stream, that can be used in FIFO mode or direct mode:

  * FIFO mode
    * with threshold level software selectable between 1/4, 1/2 or 3/4 of the FIFO size
  * Direct mode
    * Each DMA request immediately initiates a transfer from/to the memory. When it is configured in direct mode (FIFO disabled), to transfer data in memory-to-peripheral mode, the DMA preloads only one data from the memory to the internal FIFO to ensure an immediate data transfer as soon as a DMA request is triggered by a peripheral.
* Each stream can be configured by hardware to be:

  * a regular channel that supports peripheral-to-memory, memory-to-peripheral and memory-to-memory transfers
  * a double buffer channel that also supports double buffering on the memory side
* Each of the 8 streams are connected to dedicated hardware DMA channels (requests)
* Priorities between DMA stream requests are software-programmable (4 levels consisting of very high, high, medium, low) or hardware in case of equality (request 0 has priority over request 1, etc.)
* **Each stream also supports software trigger for memory-to-memory transfers (only available for the DMA2 controller)**
* Each stream request can be selected among up to 8 possible channel requests. This selection is software-configurable and allows several peripherals to initiate DMA requests
* The number of data items to be transferred can be managed either by the DMA controller or by the peripheral:

  * DMA flow controller: the number of data items to be transferred is software-programmable from 1 to 65535
  * Peripheral flow controller: the number of data items to be transferred is unknown and controlled by the source or the destination peripheral that signals the end of the transfer by hardware
* Independent source and destination transfer width (byte, half-word, word): when the data widths of the source and destination are not equal, the DMA automatically packs/unpacks the necessary transfers to optimize the bandwidth. This feature is only available in FIFO mode
* Incrementing or non-incrementing addressing for source and destination
* Supports incremental burst transfers of 4, 8 or 16 beats. The size of the burst is software-configurable, usually equal to half the FIFO size of the peripheral
* Each stream supports circular buffer management
* 5 event flags (DMA Half Transfer, DMA Transfer complete, DMA Transfer Error, DMA FIFO Error, Direct Mode Error) logically ORed together in a single interrupt request for each stream

## DMA transactions

数据传输的长度

数据的位宽

每个DMA 传输包含3部分:

* **数据加载**的外设寄存器地址、内存地址，通过DMA_SxPAR 或者 DMA_SxM0AR寻址
* **数据存储**的外设寄存器地址、内存地址，通过DMA_SxPAR 或者 DMA_SxM0AR寻址
* A post-decrement of the DMA_SxNDTR register, which contains the number of transactions that still have to be performed

## Channel selection

每个Stream有8个channel可选，每个stream和每个channel固定为某个外设使用，不同的chip连接可能不一样

DMA_SxCR.CHSEL[2:0] 用于选择使用哪个channel

![img](image/stm32_dma/1650805761869.png)

## Arbiter
