#include "list.h"
#define first_node   head_node.next_node
#define last_node    head_node.prev_node

void node_init (node_t * node)
{
    node->next_node = node;
    node->prev_node = node;
}
void list_init (list_t * list)
{
	list->first_node = &(list->head_node);
    list->last_node = &(list->head_node);
    list->node_count = 0;
}

uint32_t list_count (list_t * list)
{
    return list->node_count;
}

uint32_t list_first (list_t * list)
{
    node_t *node = (node_t*)0;

    if (list->node_count != 0) {
        node = list->first_node;
    }

    return node;
}
uint32_t list_last (list_t * list)
{
    node_t *node = (node_t*)0;

    if (list->node_count != 0) {
        node = list->last_node;
    }

    return node;
}

node_t * list_prev (list_t * list, node_t * node)
{
    if (node->prev_node == node) {
        return (node_t*)0;
    } else {
        return node->prev_node;
    }
}
node_t * list_next (list_t * list, node_t * node)
{
    if (node->next_node == node) {
        return (node_t*)0;
    } else {
        return node->next_node;
    }
}
void list_remove_all (list_t * list)
{
    uint32_t count;
    node_t *next_node;

    next_node = list->first_node;

    for (count = list->node_count; count != 0; count--) {
    	// 先纪录下当前结点，和下一个结点
    	// 必须纪录下一结点位置，因为在后面的代码中当前结点的next会被重置
        node_t *current_node = next_node;
        next_node = next_node->next_node;

        current_node->next_node = current_node;
        current_node->prev_node = current_node;
    }
    list->first_node = &(list->head_node);
    list->last_node = &(list->head_node);
    list->node_count = 0;
}

void list_add_first (list_t * list, node_t * node)
{
    node->prev_node = list->first_node->prev_node;
    node->next_node = list->first_node;

    list->first_node->prev_node = node;
    list->first_node = node;
    list->node_count++;    
}
void list_add_last (list_t * list, node_t * node)
{
	node->next_node = &(list->head_node);
    node->prev_node = list->last_node;

    list->last_node->next_node = node;
    list->last_node = node;
    list->node_count++;
}
node_t * list_remove_first (list_t * list)
{
    node_t * node = (node_t *)0;

	if( list->node_count != 0 )
    {
        node = list->first_node;

        node->next_node->prev_node = &(list->head_node);
        list->first_node = node->next_node;
        list->node_count--;
    }
    return  node;
}
node_t * list_insert_after (list_t * list, node_t * node_after, node_t * node_to_insert)
{
    node_to_insert->prev_node = node_after;
    node_to_insert->next_node = node_after->next_node;

    node_after->next_node->prev_node = node_to_insert;
    node_after->next_node = node_to_insert;

    list->node_count++;
}
void list_remove (list_t * list, node_t * node)
{
    node->prev_node->next_node = node->next_node;
    node->next_node->prev_node = node->prev_node;
    list->node_count--;
}