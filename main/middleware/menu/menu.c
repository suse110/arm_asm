#include "menu.h"


int current_level = 0;
menu_node_item_t header = {
    .level = 0,
    .name = "root",
    .action = default_action,
};
//将菜单项添加到链表中，不区分菜单级别，统一添加到一个链表中
void add_menu(menu_node_item_t items[], int length)
{
    int level[MAX_LEVEL];
    for (int i = 0; i < length; i ++) {
        // if(items[i].level == 1){
        // level[1] = i;
        // list_add_tail(&((items[i]).list),&header.list);
        // }else{
        // level[items[i].level] = i;
        /* list_add(&((items[i]).list),&((items[level[items[i].level - 1]]).list));  */
        list_add_tail(&((items[i]).list), &header.list);
        // }
    }
}

int default_action(void *e)
{
    menu_node_item_t *item;
    menu_node_item_t *element = (menu_node_item_t *)e;
    if (element->level == 0) {
        MLOG("Main Menu:\n");
    } else {
        MLOG("Group Name:%s,Supported test case:\n", element->name);
    }
    int count = 0;
    list_for_each_entry(item, &(element->list), list) {
        if (item->level == element->level + 1) { //在链表上找到下一级菜单的节点
            item->index = count;//菜单项按顺序编号
            MLOG("%d\t%s\n", count++, item->name);
        }
        //所有节点都按顺序挂在同一个链表上,所以遇到和当前节点level相同的,说明这个节点的子菜单已经结束
        if (item->level == element->level) {
            break;
        }
    }
}

void print_menu()
{
    menu_node_item_t *item;
    list_for_each_entry(item, &header.list, list) {
        MLOG("level : %d name : %s index : %d current_level : %d", item->level, item->name, item->index, current_level);
    }
}

menu_node_item_t *find_menu_item(menu_node_item_t *current_node, int index)
{
    menu_node_item_t *item;
    menu_node_item_t *result = NULL;
    if (current_node->index  == index && current_node->action != default_action) {
        return current_node;
    }
    /* LOGE("index : %d current_level : %d current_node name : %s",index,current_level,current_node->name); */
    list_for_each_entry(item, &(current_node->list), list) {
        /* LOGE("name : %s index : %d level : %d",item->name,item->index,item->level); */
        if (current_level == item->level && index == item->index) {
            result = item;
            return result;
        }
        if (current_node->level - item->level == 1) {
            break;
        }
    }
    list_for_each_entry_reverse(item, &(current_node->list), list) {
        /* LOGE("name : %s index : %d level : %d",item->name,item->index,item->level); */
        if (current_level == item->level && index == item->index) {
            result = item;
            break;
        }
        if (current_node->level - item->level == 1) {
            break;
        }
    }
    return result;
}

void init_menu()
{
    INIT_LIST_HEAD(&header.list);
}

void run_menu()
{
    char cmdIdx;
    menu_node_item_t *current_node = &header;
    menu_node_item_t *history_node[MAX_LEVEL];
    int history = 0;

    history_node[history] = current_node;
    current_level = current_node->level + 1;
    current_node->action(current_node);
    while (1) {
        MLOGI("please input command index(-1 exit):");
        // while(1){
        cmdIdx = GET_MENU_ID();
        // printf("cmdodx=%d\n", cmdIdx);
    // }
        if (cmdIdx == 27) { //-1返回上级目录
            MLOGI("history : %d", history);
            current_node = history_node[history == 0 ? 0 : --history];
            current_level = current_node->level + 1;
            current_node->action(current_node);
        } else {
            MLOGI("current_node name : %s, cmdIdx=%d %c", current_node->name, cmdIdx, cmdIdx);
            menu_node_item_t *item = find_menu_item(current_node, cmdIdx - 0x30);
            if (item == NULL) { //除-1以外的其他非正常所以，显示当前目录
                printf("[%s]:%d\n", __func__, __LINE__);
                if (current_node->action != default_action) {
                    history_node[history == 0 ? 0 : history]->action(history_node[history == 0 ? 0 : history]);
                    printf("[%s]:%d\n", __func__, __LINE__);
                } else {
                    printf("[%s]:%d\n", __func__, __LINE__);
                    current_node->action(current_node);
                }
                /* LOGE("item is NULL %d",history); */
                /* current_node = history_node[history == 0?0:--history]; */
                /* current_level = current_node->level + 1;               */
                /* current_node->action(current_node);                    */
                continue;
            } else {
                printf("[%s]:%d\n", __func__, __LINE__);
                current_node = item;
                if (current_node->action == default_action) {
                    printf("[%s]:%d\n", __func__, __LINE__);
                    history++;
                    history_node[history] = current_node;
                    current_level = current_node->level + 1;
                }
                printf("[%s]:%d\n", __func__, __LINE__);
                current_node->action(current_node);
            }
        }
    }
}
