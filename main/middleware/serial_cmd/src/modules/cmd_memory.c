#include "../inc/serial_protocol.h"
#include "../inc/modules/cmd_memory.h"

uint32_t set_memory_value(uint32_t address, uint32_t value)
{
  *(volatile uint32_t*)address = value;
  return 0;
}
uint32_t get_memory_value(uint32_t address)
{
  return *(volatile uint32_t*)address;
}

// 内存子命令处理函数
SerialResponse mem_set_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    
    ParamCheckResult check = check_param_count(param_count, 2, "Usage: #mem.set <0xaddress> <0xvalue>", &response);
    if (check != PARAM_OK) return response;
    
    uint32_t address;
    uint32_t value;
    
    if (check_uint_param_hex(params[0], &address, 0, UINT32_MAX, "Invalid memory address, must start with 0x", &response) != PARAM_OK)
        return response;
        
    if (check_uint_param_hex(params[1], (uint32_t*)&value, 0, UINT32_MAX, "Invalid memory value (0x00-0xFF), must start with 0x", &response) != PARAM_OK)
        return response;
    
    if (set_memory_value(address, value)) {
        build_response(&response, true, RESP_OK, "Memory 0x%08X set to 0x%02X", address, value);
    } else {
        build_response(&response, false, RESP_ERROR, "Failed to set memory");
    }
    
    return response;
}

SerialResponse mem_get_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    
    ParamCheckResult check = check_param_count(param_count, 1, "Usage: #mem.get <0xaddress>", &response);
    if (check != PARAM_OK) return response;
    
    uint32_t address;
    if (check_uint_param_hex(params[0], &address, 0, UINT32_MAX, "Invalid memory address, must start with 0x", &response) != PARAM_OK)
        return response;
    
    uint32_t value = get_memory_value(address);
    build_response(&response, true, RESP_OK, "0x%02X", value);
    
    return response;
}

void mem_module_init(void) {
    // 注册模块和子命令
    register_module("mem", NULL); // 无默认处理函数
    register_subcommand("mem", "set", mem_set_handler);
    register_subcommand("mem", "get", mem_get_handler);
}