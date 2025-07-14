#include "../inc/modules/cmd_led.h"
#include "../inc/serial_protocol.h"

static uint8_t set_led_state(uint32_t led_num, uint32_t state) {
    set_led_status((bsp_led_t)led_num, (bsp_led_status_t)state);
    return 1;
}

static uint8_t get_led_state(uint32_t led_num) {
    return led_status((bsp_led_t)led_num);
}

// LED子命令处理函数
SerialResponse led_set_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    
    ParamCheckResult check = check_param_count(param_count, 2, "Usage: #led.set <led> <state>", &response);
    if (check != PARAM_OK) return response;
    
    uint32_t led_num, state;
    
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
    
    uint32_t led_num;
    if (check_uint_param(params[0], &led_num, 0, 255, "Invalid LED number (0-255)", &response) != PARAM_OK)
        return response;
    
    uint8_t state = get_led_state(led_num);
    build_response(&response, true, RESP_OK, "%d", state);
    
    return response;
}

SerialResponse led_toggle_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) { 
    SerialResponse response = {0};
    ParamCheckResult check = check_param_count(param_count, 1, "Usage: #led.toggle <led>", &response);
    if (check != PARAM_OK) return response;
    
    uint32_t led_num;
    if (check_uint_param(params[0], &led_num, 0, 255, "Invalid LED number (0-255)", &response) != PARAM_OK)
        return response;
    
    uint8_t state = get_led_state(led_num);
    if (set_led_state(led_num, state?0:1)) {
        build_response(&response, true, RESP_OK, "LED %d toggle to %d", led_num, !state);
    } else {
        build_response(&response, false, RESP_ERROR, "Failed to toggle LED");
    }
    
    return response;
}

void led_module_init(void) {
    // 注册模块和子命令
    register_module("led", NULL); // 无默认处理函数
    register_subcommand("led", "set", led_set_handler);
    register_subcommand("led", "get", led_get_handler);
    register_subcommand("led", "toggle", led_toggle_handler);

}