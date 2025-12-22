#include <stdarg.h>
#include "serial_protocol.h"
#include "serial.h"
#include "modules/led_module.h"
#include "modules/stepper_module.h"
#include "modules/system_module.h"

// ================= 模块管理实现 =================
static CommandModule registered_modules[MAX_MODULES];
static uint8_t module_count = 0;

void register_module(const char* module_name, ModuleCommandHandler handler) {
    if (module_count < MAX_MODULES && module_name != NULL) {
        memset(&registered_modules[module_count], 0, sizeof(CommandModule));
        registered_modules[module_count].module_name = module_name;
        registered_modules[module_count].default_handler = handler;
        module_count++;
    }
}

void register_subcommand(const char* module_name, 
                       const char* subcommand_name,
                       SubCommandHandler handler) {
    if (module_name == NULL || subcommand_name == NULL || handler == NULL) {
        return;
    }

    for (uint8_t i = 0; i < module_count; i++) {
        if (strcmp(registered_modules[i].module_name, module_name) == 0) {
            if (registered_modules[i].subcommand_count < MAX_SUBCOMMANDS_PER_MODULE) {
                uint8_t idx = registered_modules[i].subcommand_count++;
                registered_modules[i].subcommands[idx].name = subcommand_name;
                registered_modules[i].subcommands[idx].handler = handler;
            }
            return;
        }
    }
}

static CommandModule* find_module(const char* module_name) {
    for (uint8_t i = 0; i < module_count; i++) {
        if (strcmp(registered_modules[i].module_name, module_name) == 0) {
            return &registered_modules[i];
        }
    }
    return NULL;
}

// ================= 命令解析实现 =================
static bool parse_command(const char* buffer, ParsedCommand* cmd) {
    if (buffer == NULL || cmd == NULL || buffer[0] != PROTOCOL_START_CHAR) {
        return false;
    }

    // 查找模块和子命令分隔符
    char* dot_pos = strchr(buffer, PROTOCOL_MODULE_DELIM);
    if (dot_pos == NULL) return false;

    // 提取模块名
    size_t module_len = dot_pos - (buffer + 1);
    if (module_len == 0 || module_len >= MAX_MODULE_NAME_LEN) return false;
    
    strncpy(cmd->module, buffer + 1, module_len);
    cmd->module[module_len] = '\0';

    // 提取子命令
    char* space_pos = strchr(dot_pos + 1, PROTOPARAM_DELIM);
    size_t subcmd_len = (space_pos != NULL) ? 
                       (space_pos - (dot_pos + 1)) : 
                       strlen(dot_pos + 1);
    
    if (subcmd_len == 0 || subcmd_len >= MAX_SUBCOMMAND_LEN) return false;
    
    strncpy(cmd->subcommand, dot_pos + 1, subcmd_len);
    cmd->subcommand[subcmd_len] = '\0';

    // 解析参数
    cmd->param_count = 0;
    if (space_pos != NULL) {
        char* token = strtok(space_pos + 1, " ");
        while (token != NULL && cmd->param_count < MAX_PARAMS) {
            strncpy(cmd->params[cmd->param_count], token, MAX_PARAM_LEN-1);
            cmd->params[cmd->param_count][MAX_PARAM_LEN-1] = '\0';
            cmd->param_count++;
            token = strtok(NULL, " ");
        }
    }

    return true;
}

// ================= 协议主实现 =================
static char rx_buffer[MAX_COMMAND_LEN];
static uint8_t rx_index = 0;


void serial_protocol_process(void) {
    while(serial_data_available()) {
        char c = serial_read_byte();
        
        // 检测终止符
        if (c == '\n' || c == '\r') {
            if (rx_index > 0) {
                rx_buffer[rx_index] = '\0';
                
                ParsedCommand cmd = {0};
                if (parse_command(rx_buffer, &cmd)) {
                    CommandModule* module = find_module(cmd.module);
                    if (module != NULL) {
                        SerialResponse response = {0};
                        
                        // 查找子命令处理函数
                        SubCommandHandler sub_handler = NULL;
                        for (uint8_t i = 0; i < module->subcommand_count; i++) {
                            if (strcmp(module->subcommands[i].name, cmd.subcommand) == 0) {
                                sub_handler = module->subcommands[i].handler;
                                break;
                            }
                        }
                        
                        if (sub_handler != NULL) {
                            response = sub_handler(cmd.params, cmd.param_count);
                        } 
                        // 如果没有子命令但模块有默认处理函数
                        else if (module->default_handler != NULL && 
                                 module->subcommand_count == 0) {
                            response = module->default_handler(cmd.params, cmd.param_count);
                        }
                        else {
                            response.success = false;
                            strcpy(response.message, RESP_SUBCMD_NOT_FOUND);
                            snprintf(response.data, sizeof(response.data), 
                                    "Subcommand '%s' not found", cmd.subcommand);
                        }
                        
                        send_response(&response);
                    } else {
                        SerialResponse response = {0};
                        response.success = false;
                        strcpy(response.message, RESP_MODULE_NOT_FOUND);
                        snprintf(response.data, sizeof(response.data), 
                                "Module '%s' not found", cmd.module);
                        send_response(&response);
                    }
                } else {
                    SerialResponse response = {0};
                    response.success = false;
                    strcpy(response.message, RESP_INVALID_CMD);
                    strcpy(response.data, "Invalid command format");
                    send_response(&response);
                }
                
                rx_index = 0;
            }
        } 
        else if (rx_index < MAX_COMMAND_LEN - 1) {
            rx_buffer[rx_index++] = c;
        }
    }
}

void send_response(const SerialResponse* response) {
    if (response == NULL) return;
    
    serial_send_string(response->message);
    
    if (strlen(response->data) > 0) {
        serial_send_string(" ");
        serial_send_string(response->data);
    }
    
    serial_send_string(PROTOCOL_TERMINATOR);
}

void serial_protocol_init(void) {
    rx_index = 0;
    memset(rx_buffer, 0, sizeof(rx_buffer));
    memset(registered_modules, 0, sizeof(registered_modules));
    module_count = 0;

    led_module_init();
    stepper_module_init();
    system_module_init();
}
void build_response(SerialResponse* response, bool success, const char* message, const char* data_fmt, ...) {
    if (response == NULL) return;
    
    response->success = success;
    strncpy(response->message, message, sizeof(response->message)-1);
    
    if (data_fmt != NULL) {
        va_list args;
        va_start(args, data_fmt);
        vsnprintf(response->data, sizeof(response->data), data_fmt, args);
        va_end(args);
    } else {
        response->data[0] = '\0';
    }
}

ParamCheckResult check_param_count(uint8_t param_count, uint8_t required, const char* usage, SerialResponse* response) {
    if (param_count < required) {
        if (response) {
            response->success = false;
            strcpy(response->message, RESP_INVALID_PARAM);
            snprintf(response->data, sizeof(response->data), "Usage: %s", usage);
        }
        return PARAM_COUNT_ERROR;
    }
    return PARAM_OK;
}

ParamCheckResult check_int_param(const char* str, int32_t* value, int32_t min, int32_t max, const char* err_msg, SerialResponse* response) {
    char* endptr;
    long val = strtol(str, &endptr, 10);
    if (*endptr != '\0' || val < min || val > max) {
        if (response) {
            response->success = false;
            strcpy(response->message, RESP_INVALID_PARAM);
            strcpy(response->data, err_msg);
        }
        return PARAM_RANGE_ERROR;
    }
    
    *value = (int32_t)val;
    return PARAM_OK;
}

ParamCheckResult check_uint_param(const char* str, uint32_t* value, uint32_t min, uint32_t max, const char* err_msg, SerialResponse* response) {
    // 参数有效性检查
    if (!str || !value) {
        return PARAM_RANGE_ERROR;
    }
    
    // 检查负号
    if (*str == '-') {
        if (response) {
            response->success = false;
            strncpy(response->message, RESP_INVALID_PARAM, MAX_MSG_LEN-1);
            strncpy(response->data, err_msg, MAX_RESPONSE_LEN-1);
            response->message[MAX_MSG_LEN-1] = '\0';
            response->data[MAX_RESPONSE_LEN-1] = '\0';
        }
        return PARAM_RANGE_ERROR;
    }
    
    char* endptr;
    unsigned long val = strtoul(str, &endptr, 10);
    
    // 检查转换有效性
    if (*endptr != '\0' || val < min || val > max || val > UINT16_MAX) {
        if (response) {
            response->success = false;
            strncpy(response->message, RESP_INVALID_PARAM, MAX_MSG_LEN-1);
            strncpy(response->data, err_msg, MAX_RESPONSE_LEN-1);
            response->message[MAX_MSG_LEN-1] = '\0';
            response->data[MAX_RESPONSE_LEN-1] = '\0';
        }
        return PARAM_RANGE_ERROR;
    }
    
    *value = (uint32_t)val;
    return PARAM_OK;
}
