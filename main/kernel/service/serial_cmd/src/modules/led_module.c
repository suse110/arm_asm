#include "../inc/modules/led_module.h"
#include "../inc/serial_protocol.h"

// 假设的LED控制函数
static uint8_t set_led_state(uint8_t led_num, uint8_t state) {
    // 实际硬件控制代码
    return 1; // 返回1表示成功
}

static uint8_t get_led_state(uint8_t led_num) {
    // 实际硬件读取代码
    return 0; // 示例返回值
}

// LED子命令处理函数
SerialResponse led_set_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    
    ParamCheckResult check = check_param_count(param_count, 2, "Usage: #led.set <led> <state>", &response);
    if (check != PARAM_OK) return response;
    
    uint8_t led_num, state;
    
    if (check_uint_param(params[0], &led_num, 0, 255, "Invalid LED number (0-255)", &response) != PARAM_OK)
        return response;
        
    if (check_uint_param(params[1], &state, 0, 1, "Invalid state (0 or 1)", &response) != PARAM_OK)
        return response;
    
    if (set_led_state(led_num, state)) {
        build_response(&response, true, RESP_OK, "LED %d set to %d", led_num, state);
    } else {
        build_response(&response, false, RESP_ERROR, "Failed to set LED");
    }
    
    return response;
}

SerialResponse led_get_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    
    ParamCheckResult check = check_param_count(param_count, 1, "Usage: #led.get <led>", &response);
    if (check != PARAM_OK) return response;
    
    uint8_t led_num;
    if (check_uint_param(params[0], &led_num, 0, 255, "Invalid LED number (0-255)", &response) != PARAM_OK)
        return response;
    
    uint8_t state = get_led_state(led_num);
    build_response(&response, true, RESP_OK, "%d", state);
    
    return response;
}

// LED模块初始化
void led_module_init(void) {
    // 注册模块和子命令
    register_module("led", NULL); // 无默认处理函数
    register_subcommand("led", "set", led_set_handler);
    register_subcommand("led", "get", led_get_handler);
}