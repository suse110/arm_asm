#ifndef __LIST_H__
#define __LIST_H__
#include <stdint.h>
typedef struct node_s {
    struct node_s *prev_node;
    struct node_s *next_node;
} node_t;

typedef struct list_s {
    node_t head_node;
    uint32_t node_count;
} list_t;

#define NODE_PARENT(node, parent, name) (parent *)((uint32_t)node - (uint32_t)&((parent *)0)->name)

void node_init (node_t * node);
void list_init (list_t * list);
//返回链表中结点的数量
uint32_t list_count (list_t * list);
//返回链表的首个结点,如果链表为空，则返回0
uint32_t list_first (list_t * list);
//返回链表的最后一个结点,如果链表为空，则返回0
uint32_t list_last (list_t * list);
//返回链表中指定结点的前一结点,前一结点结点，如果结点没有前结点（链表为空），则返回0
node_t * list_prev (list_t * list, node_t * node);
//返回链表中指定结点的后一结点,后一结点结点，如果结点没有后结点（链表为空），则返回0
node_t * list_next (list_t * list, node_t * node);
//移除链表中的所有结点
void list_remove_all (list_t * list);
//将指定结点添加到链表的头部
void list_add_first (list_t * list, node_t * node);
//将指定结点添加到链表的末尾
void list_add_last (list_t * list, node_t * node);
//移除链表中的第1个结点
node_t * list_remove_first (list_t * list);
//将指定的结点插入到某个结点后面
node_t * list_insert_after (list_t * list, node_t * node_after, node_t * node_to_insert);
//将指定结点从链表中移除
void list_remove (list_t * list, node_t * node);


#endif // __LIST_H__
