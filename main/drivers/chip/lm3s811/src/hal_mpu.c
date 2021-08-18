#include "lm3s811.h"
#include "hal_mpu.h"
#include "mpu_armv7.h"
#include "hal_log.h"

void hal_mpu_test(void)
{
    /*
    特权级代码 0x0000_0000‐0x00FF_FFFF(16MB)  全访问     缓存可
    特权极数据 0x0800_0000‐0x0803_FFFF(4MB)   全访问     缓存可
    外设       0x4000_0000‐0x5FFF_FFFF(512MB) 全访问     共享设备
    系统控制   0xE000_0000‐0xE00F_FFFF(1MB)   特权级访问  严格顺序，XN
    */
    ARM_MPU_Region_t table[] = {
        {
                               //DisableExec, AccessPermission, TypeExtField, IsShareable, IsCacheable, IsBufferable, SubRegionDisable, Size
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         1,           1,            1,                ARM_MPU_REGION_SIZE_16MB),
            .RBAR = ARM_MPU_RBAR(0, 0x00000000),
        },
        {
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         1,           1,            1,                ARM_MPU_REGION_SIZE_4MB),
            .RBAR = ARM_MPU_RBAR(1, 0x08000000),
        },
        {
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         0,           1,            1,                ARM_MPU_REGION_SIZE_512MB),
            .RBAR = ARM_MPU_RBAR(2, 0x40000000),
        },
        {
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         0,           0,            1,                ARM_MPU_REGION_SIZE_1MB),
            .RBAR = ARM_MPU_RBAR(3, 0xE0000000),
        },
    };
    
    ARM_MPU_Disable();
#if 0
    ARM_MPU_Load(table, sizeof(table));
#else
    ARM_MPU_Region_t *mpu_region;
    mpu_region = &table[0];
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
        ARM_MPU_SetRegion(mpu_region->RBAR, mpu_region->RASR);
        mpu_region++;
    }
#endif
    ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk|MPU_CTRL_HFNMIENA_Msk);
}
