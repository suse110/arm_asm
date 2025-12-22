#ifndef SYSTEM_MODULE_H
#define SYSTEM_MODULE_H

// 这里可以添加头文件包含语句
// #include <xxx.h>
#include <stdint.h>
// 这里可以添加宏定义
// #define xxx xxx

// 这里可以添加类型定义
// 辅助函数：打印一个寄存器每个bit的值
// 定义寄存器位描述结构体
typedef struct {
    uint32_t bit_pos;  // 位位置
    uint32_t bit_width; // 位宽度
    const char *desc;   // 位描述
} RegisterBitDesc;

// 这里可以添加函数声明
// void function_name(...);
void system_module_init(void);

#endif // SYSTEM_MODULE_H
