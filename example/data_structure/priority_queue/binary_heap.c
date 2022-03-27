#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "binary_heap.h"


priority_queue_t pq_init(int max_elem)
{
    priority_queue_t pq;

    if ( max_elem < MIN_PQ_SIZE) {
        printf("priority size is too small\n");
        return NULL;
    }

    pq = malloc(sizeof(heap_t));
    if (pq == NULL) {
        printf("out of space\n");
        return NULL;
    }

    pq->elem = malloc((max_elem + 1) * sizeof(ElementType));
    if (pq->elem == NULL) {
        free(pq);
        printf("out of space\n");
        return NULL;
    }

    pq->capacity = max_elem;
    pq->size = 0;
    pq->elem[0] = MIN_PQ_DATA;

    return pq;
}

void pq_destroy(priority_queue_t pq)
{
    if (pq && pq->elem) {
        free(pq->elem);
        free(pq);
    }    
}

void pq_make_empty(priority_queue_t pq)
{
    pq->size = 0;
}
void pq_insert(ElementType elem, priority_queue_t pq)
{
    int i;

    if (pq_is_full(pq)) {
        printf("priority queue is full\n");
        return;
    }
    for (i = ++pq->size; pq->elem[i/2] > elem; i /= 2) {
        *(pq->elem + i) = *(pq->elem + i/2);
    }
    *(pq->elem + i) = elem;
}

ElementType pq_delete_min(priority_queue_t pq)
{
    int i, child;

    ElementType min_elem, last_elem;

    if (pq_is_empty(pq)) {
        printf("priority queue is empty\n");
        return *pq->elem;
    }

    min_elem = *(pq->elem + 1);
    last_elem = *(pq->elem + pq->size--);

    for (i = 1; i * 2 <= pq->size; i = child) {
        //find smaller child
        child = i * 2;
        if (child != pq->size && *(pq->elem + child + 1) < *(pq->elem + child)) {
            child++;
        }
        //percolate one level
        if (last_elem > *(pq->elem + child)) {
            *(pq->elem + i) = *(pq->elem + child);
        } else {
            break;
        }
    }

    *(pq->elem + i) = last_elem;
    return  min_elem;
}

ElementType pq_find_min(priority_queue_t pq)
{
    if (pq_is_empty(pq)) {
        printf("priority queue is empty\n");
        return *pq->elem;
    }

    return  *(pq->elem + 1);
}

bool pq_is_empty(priority_queue_t pq)
{
    return pq->size ? false : true;
}
bool pq_is_full(priority_queue_t pq)
{
    return (pq->size >= pq->capacity) ? true : false;
}
