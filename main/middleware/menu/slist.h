#ifndef __SLIST_H__
#define __SLIST_H__

typedef struct slist {
    struct slist *next;
} slist_t;

static inline void slist_add(slist_t *node, slist_t *head)
{
    node->next = head->next;
    head->next = node;
}

#endif // __SLIST_H__
