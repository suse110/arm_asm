#include <stdint.h>
#include "hal.h"

void main(void)
{
    lite_printf("hello world\n");
    hal_mpu_test();
    while(1);
}
