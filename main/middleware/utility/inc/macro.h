#ifndef __MACRO_H__
#define __MACRO_H__

#define foreach_node(node, head)\
    for (node = head; node; node = node->next)

#define last_node(node, head)\
    for (node = head; node && node->next; node = node->next)

#define foreach_array(type, item, array, len, ...) \
    for (uint32_t idx = 0; idx != len; idx++) {\
        type item = (type)array[idx];\
        __VA_ARGS__\
    }

#define foreach_index(idx, start, end)\
    for (uint32_t idx = start; idx != end; idx++)

#define loop(idx, start, end) foreach_index(idx, start, end)

#define range(idx, start, end)\
    for (uint32_t idx = start; idx != end; idx++)

#endif // __MACRO_H__
