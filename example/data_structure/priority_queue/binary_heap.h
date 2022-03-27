#ifndef __BINARY_HEAP_H__
#define __BINARY_HEAP_H__

#define ElementType char
#define MIN_PQ_SIZE 3
#define MIN_PQ_DATA 0

typedef struct {
    int capacity;
    int size;
    ElementType *elem;
} heap_t;

typedef heap_t *priority_queue_t;

priority_queue_t pq_init(int max_elem);
void pq_destroy(priority_queue_t pq);
void pq_make_empty(priority_queue_t pq);
void pq_insert(ElementType elem, priority_queue_t pq);
ElementType pq_delete_min(priority_queue_t pq);
ElementType pq_find_min(priority_queue_t pq);
bool pq_is_empty(priority_queue_t pq);
bool pq_is_full(priority_queue_t pq);

#endif // __BINARY_HEAP_H__
