#ifndef SERIAL_PROTOCOL_H
#define SERIAL_PROTOCOL_H

#include <stdint.h>
#include <stdbool.h>
#include <string.h>

// ================= 协议配置 =================
#define PROTOCOL_START_CHAR    '#'
#define PROTOCOL_MODULE_DELIM  '.'
#define PROTOPARAM_DELIM       ' '
#define PROTOCOL_TERMINATOR    "\r\n"

#define MAX_MODULE_NAME_LEN    16
#define MAX_SUBCOMMAND_LEN     16
#define MAX_PARAM_LEN          16
#define MAX_PARAMS             8
#define MAX_MSG_LEN            32
#define MAX_RESPONSE_LEN       128
#define MAX_COMMAND_LEN        64
#define MAX_SUBCOMMANDS_PER_MODULE 10
#define MAX_MODULES            10

#define RESP_OK                "OK"
#define RESP_ERROR             "ERROR"
#define RESP_INVALID_CMD       "INVALID_CMD"
#define RESP_INVALID_PARAM     "INVALID_PARAM"
#define RESP_PARAM_RANGE_ERROR "INVALID_PARAM_RANGE"
#define RESP_MODULE_NOT_FOUND  "MODULE_NOT_FOUND"
#define RESP_SUBCMD_NOT_FOUND  "SUBCMD_NOT_FOUND"

// ================= 数据类型 =================
typedef struct {
    bool success;
    char message[MAX_MSG_LEN];
    char data[MAX_RESPONSE_LEN];
} SerialResponse;

typedef SerialResponse (*SubCommandHandler)(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
typedef SerialResponse (*ModuleCommandHandler)(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);

typedef struct {
    const char* name;
    SubCommandHandler handler;
} SubCommandEntry;

typedef struct {
    const char* module_name;
    ModuleCommandHandler default_handler;  // 无子命令时的处理函数
    SubCommandEntry subcommands[MAX_SUBCOMMANDS_PER_MODULE];
    uint8_t subcommand_count;
} CommandModule;

typedef struct {
    char module[MAX_MODULE_NAME_LEN];
    char subcommand[MAX_SUBCOMMAND_LEN];
    char params[MAX_PARAMS][MAX_PARAM_LEN];
    uint8_t param_count;
} ParsedCommand;


typedef enum {
    PARAM_OK = 0,
    PARAM_COUNT_ERROR,
    PARAM_RANGE_ERROR,
    PARAM_FORMAT_ERROR
} ParamCheckResult;

// 检查参数数量
ParamCheckResult check_param_count(uint8_t param_count, uint8_t required, const char* usage, SerialResponse* response);

// 检查整数参数范围
ParamCheckResult check_int_param(const char* str, int32_t* value, int32_t min, int32_t max, const char* err_msg, SerialResponse* response);

// 检查无符号整数参数范围
ParamCheckResult check_uint_param(const char* str, uint32_t* value, uint32_t min, uint32_t max, const char* err_msg, SerialResponse* response);

// ================= 模块注册接口 =================
void register_module(const char* module_name, ModuleCommandHandler handler);
void register_subcommand(const char* module_name, 
                       const char* subcommand_name,
                       SubCommandHandler handler);

// ================= 协议核心接口 =================
void serial_protocol_init(void);
void serial_protocol_process(void);
void send_response(const SerialResponse* response);
void build_response(SerialResponse* response, bool success, const char* message, const char* data_fmt, ...);
#endif // SERIAL_PROTOCOL_H