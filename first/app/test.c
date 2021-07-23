#include <stdint.h>
#include "hal.h"

void main(void)
{
    lite_printf("[%s] hello world\n", __func__);
    hal_mpu_test();
    while(1);
}
