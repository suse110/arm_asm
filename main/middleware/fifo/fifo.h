#ifndef __FIFO_H__
#define __FIFO_H__
#include <stdbool.h>
typedef struct {
    unsigned char *buffer;     /* the buffer holding the data */
    unsigned int size;         /* the size of the allocated buffer */
    unsigned char wptr;         /* data is added at offset (in % size) */
    unsigned char rptr;         /* data is extracted from off. (out % size) */
} fifo_t;

fifo_t *fifo_init(unsigned char *buffer, unsigned int size);
fifo_t *fifo_alloc(unsigned int size);
unsigned int fifo_put(fifo_t *fifo, const unsigned char *buffer, unsigned int len);
unsigned int fifo_get(fifo_t *fifo, unsigned char *buffer, unsigned int len);
void fifo_reset(fifo_t *fifo);
bool fifo_full(fifo_t *fifo);
bool fifo_empty(fifo_t *fifo);
unsigned int fifo_data_len(fifo_t *fifo);

#endif // __FIFO_H__
