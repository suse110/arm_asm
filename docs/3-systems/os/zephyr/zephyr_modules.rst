Zephyr RTOS 模块列表
====================

本文档详细列举了 Zephyr RTOS 提供的所有主要模块，包括其功能介绍和源码路径。

目录
----

1. 内核模块 (kernel)
2. 驱动模块 (drivers)
3. 子系统模块 (subsys)
4. 库模块 (lib)
5. 架构模块 (arch)
6. SoC 模块 (soc)
7. 开发板模块 (boards)
8. 设备树模块 (dts)
9. 构建系统模块 (cmake)
10. 脚本和工具模块 (scripts)

内核模块 (kernel)
-----------------

内核模块是 Zephyr RTOS 的核心，提供了实时操作系统的基本功能。

**路径**: `zephyr/kernel/`

主要子模块：

1. **线程管理 (thread.c)**
   - 路径: `zephyr/kernel/thread.c`
   - 功能: 线程创建、调度、优先级管理
   - API: k_thread_create, k_thread_start, k_thread_abort

2. **调度器 (sched.c)**
   - 路径: `zephyr/kernel/sched.c`
   - 功能: 线程调度、时间片轮转、抢占式调度
   - 支持: 抢占式、协作式调度

3. **互斥锁 (mutex.c)**
   - 路径: `zephyr/kernel/mutex.c`
   - 功能: 互斥锁、优先级继承
   - API: k_mutex_init, k_mutex_lock, k_mutex_unlock

4. **信号量 (sem.c)**
   - 路径: `zephyr/kernel/sem.c`
   - 功能: 计数信号量、二值信号量
   - API: k_sem_init, k_sem_take, k_sem_give

5. **消息队列 (msg_q.c)**
   - 路径: `zephyr/kernel/msg_q.c`
   - 功能: 线程间消息传递
   - API: k_msgq_init, k_msgq_put, k_msgq_get

6. **队列 (queue.c)**
   - 路径: `zephyr/kernel/queue.c`
   - 功能: FIFO 队列实现
   - API: k_queue_init, k_queue_append, k_queue_get

7. **邮箱 (mailbox.c)**
   - 路径: `zephyr/kernel/mailbox.c`
   - 功能: 线程间同步和通信
   - API: k_mbox_init, k_mbox_put, k_mbox_get

8. **管道 (pipes.c)**
   - 路径: `zephyr/kernel/pipes.c`
   - 功能: 管道通信机制
   - API: k_pipe_init, k_pipe_put, k_pipe_get

9. **定时器 (timer.c)**
   - 路径: `zephyr/kernel/timer.c`
   - 功能: 定时器管理、超时处理
   - API: k_timer_init, k_timer_start, k_timer_stop

10. **超时管理 (timeout.c)**
    - 路径: `zephyr/kernel/timeout.c`
    - 功能: 超时队列管理
    - 支持: K_FOREVER, K_NO_WAIT, K_MSEC

11. **工作队列 (work.c)**
    - 路径: `zephyr/kernel/work.c`
    - 功能: 延迟工作处理
    - API: k_work_init, k_work_submit, k_work_delayable_init

12. **系统工作队列 (system_work_q.c)**
    - 路径: `zephyr/kernel/system_work_q.c`
    - 功能: 系统级工作队列
    - API: k_system_work_q_init

13. **事件 (events.c)**
    - 路径: `zephyr/kernel/events.c`
    - 功能: 事件标志组
    - API: k_event_init, k_event_post, k_event_wait

14. **内存池 (mempool.c)**
    - 路径: `zephyr/kernel/mempool.c`
    - 功能: 固定大小内存池
    - API: k_mem_pool_init, k_mem_pool_alloc, k_mem_pool_free

15. **内存块 (mem_slab.c)**
    - 路径: `zephyr/kernel/mem_slab.c`
    - 功能: 动态内存分配
    - API: k_mem_slab_init, k_mem_slab_alloc, k_mem_slab_free

16. **设备管理 (device.c)**
    - 路径: `zephyr/kernel/device.c`
    - 功能: 设备驱动框架
    - API: device_get_binding, device_is_ready

17. **条件变量 (condvar.c)**
    - 路径: `zephyr/kernel/condvar.c`
    - 功能: POSIX 条件变量
    - API: k_condvar_init, k_condvar_wait, k_condvar_signal

18. **轮询 (poll.c)**
    - 路径: `zephyr/kernel/poll.c`
    - 功能: 多对象轮询
    - API: k_poll_init, k_poll, k_poll_signal

19. **Futex (futex.c)**
    - 路径: `zephyr/kernel/futex.c`
    - 功能: 快速用户空间互斥锁
    - API: k_futex_wait, k_futex_wake

20. **动态内存 (dynamic.c)**
    - 路径: `zephyr/kernel/dynamic.c`
    - 功能: 动态内存管理
    - API: k_malloc, k_free, k_calloc

21. **内核堆 (kheap.c)**
    - 路径: `zephyr/kernel/kheap.c`
    - 功能: 内核堆管理

22. **内存域 (mem_domain.c)**
    - 路径: `zephyr/kernel/mem_domain.c`
    - 功能: 内存域隔离
    - API: k_mem_domain_init, k_mem_domain_add_thread

23. **用户空间 (userspace.c)**
    - 路径: `zephyr/kernel/userspace.c`
    - 功能: 用户空间支持
    - API: k_user_mode_enter

24. **MMU (mmu.c)**
    - 路径: `zephyr/kernel/mmu.c`
    - 功能: 内存管理单元
    - API: z_mem_map, z_mem_unmap

25. **SMP (smp.c)**
    - 路径: `zephyr/kernel/smp.c`
    - 功能: 对称多处理
    - API: k_cpu_get, k_cpu_mask

26. **IPI (ipi.c)**
    - 路径: `zephyr/kernel/ipi.c`
    - 功能: 处理器间中断
    - API: arch_sched_ipi

27. **栈管理 (stack.c)**
    - 路径: `zephyr/kernel/stack.c`
    - 功能: 栈管理和保护
    - API: k_stack_init, k_stack_push, k_stack_pop

28. **空闲线程 (idle.c)**
    - 路径: `zephyr/kernel/idle.c`
    - 功能: 空闲线程处理
    - API: k_cpu_idle, k_cpu_atomic_idle

29. **初始化 (init.c)**
    - 路径: `zephyr/kernel/init.c`
    - 功能: 系统初始化
    - API: sys_init, z_cstart

30. **致命错误 (fatal.c)**
    - 路径: `zephyr/kernel/fatal.c`
    - 功能: 致命错误处理
    - API: k_fatal_halt, k_oops

31. **浮点支持 (float.c)**
    - 路径: `zephyr/kernel/float.c`
    - 功能: 浮点运算支持
    - API: k_float_enable, k_float_disable

32. **版本信息 (version.c)**
    - 路径: `zephyr/kernel/version.c`
    - 功能: 版本信息
    - API: sys_kernel_version_get

33. **使用统计 (usage.c)**
    - 路径: `zephyr/kernel/usage.c`
    - 功能: 资源使用统计
    - API: k_thread_usage_get, k_thread_usage_reset

34. **时间片 (timeslicing.c)**
    - 路径: `zephyr/kernel/timeslicing.c`
    - 功能: 时间片轮转
    - API: k_sched_time_slice_set

35. **XIP (xip.c)**
    - 路径: `zephyr/kernel/xip.c`
    - 功能: 片上执行支持

36. **忙等待 (busy_wait.c)**
    - 路径: `zephyr/kernel/busy_wait.c`
    - 功能: 忙等待延时
    - API: k_busy_wait

37. **错误号 (errno.c)**
    - 路径: `zephyr/kernel/errno.c`
    - 功能: 错误号定义
    - API: errno

驱动模块 (drivers)
-----------------

驱动模块提供了各种硬件设备的驱动支持。

**路径**: `zephyr/drivers/`

主要驱动类别：

1. **ADC 驱动 (adc/)**
   - 路径: `zephyr/drivers/adc/`
   - 功能: 模数转换器驱动
   - 支持: STM32, ESP32, NRF, GD32, SAM, SAM0, NXP, GECKO 等
   - API: adc_read, adc_write, adc_channel_setup

2. **音频驱动 (audio/)**
   - 路径: `zephyr/drivers/audio/`
   - 功能: 音频设备驱动
   - 支持: DMIC, TAS6422DAC, MPXXDYY

3. **辅助显示驱动 (auxdisplay/)**
   - 路径: `zephyr/drivers/auxdisplay/`
   - 功能: 辅助显示设备驱动

4. **电池备份 RAM (bbram/)**
   - 路径: `zephyr/drivers/bbram/`
   - 功能: 电池备份 RAM 驱动
   - 支持: NPCX, XEC

5. **蓝牙驱动 (bluetooth/)**
   - 路径: `zephyr/drivers/bluetooth/`
   - 功能: 蓝牙 HCI 驱动
   - 支持: H4, H5 协议

6. **缓存驱动 (cache/)**
   - 路径: `zephyr/drivers/cache/`
   - 功能: 缓存管理驱动
   - 支持: NRF

7. **CAN 驱动 (can/)**
   - 路径: `zephyr/drivers/can/`
   - 功能: 控制器局域网驱动
   - 支持: STM32, ESP32, NXP, SAM, SAM0, RCAR, KVASER, MCP2515, TCAN4X5X

8. **充电器驱动 (charger/)**
   - 路径: `zephyr/drivers/charger/`
   - 功能: 电池充电器驱动
   - 支持: BQ24190

9. **控制台驱动 (console/)**
   - 路径: `zephyr/drivers/console/`
   - 功能: 控制台驱动
   - 支持: UART, USB CDC, RTT

10. **核心转储 (coredump/)**
    - 路径: `zephyr/drivers/coredump/`
    - 功能: 核心转储支持

11. **计数器驱动 (counter/)**
    - 路径: `zephyr/drivers/counter/`
    - 功能: 硬件计数器驱动
    - 支持: STM32, NXP, NRF, SAM, TI, INFINEON

12. **加密驱动 (crypto/)**
    - 路径: `zephyr/drivers/crypto/`
    - 功能: 加密硬件加速
    - 支持: STM32, NXP, INFINEON, XEC

13. **DAC 驱动 (dac/)**
    - 路径: `zephyr/drivers/dac/`
    - 功能: 数模转换器驱动
    - 支持: STM32, ESP32, GD32, SAM, SAM0, NXP, AD56XX, MCP4725

14. **数字音频接口 (dai/)**
    - 路径: `zephyr/drivers/dai/`
    - 功能: 数字音频接口驱动
    - 支持: NXP SAI

15. **磁盘驱动 (disk/)**
    - 路径: `zephyr/drivers/disk/`
    - 功能: 磁盘驱动
    - 支持: Flash, RAM, MMC/SD, NVMe

16. **显示驱动 (display/)**
    - 路径: `zephyr/drivers/display/`
    - 功能: 显示驱动
    - 支持: SSD1306, LS0XX, SSD16XX, UC81XX

17. **DMA 驱动 (dma/)**
    - 路径: `zephyr/drivers/dma/`
    - 功能: 直接内存访问驱动
    - 支持: STM32, NXP, GD32, SAM0, PL330, XMC4XXX, RPI_PICO

18. **调试端口 (dp/)**
    - 路径: `zephyr/drivers/dp/`
    - 功能: 调试端口驱动
    - 支持: SWD

19. **ECC 驱动 (edac/)**
    - 路径: `zephyr/drivers/edac/`
    - 功能: 错误检测和纠正
    - 支持: Intel IBECC

20. **EEPROM 驱动 (eeprom/)**
    - 路径: `zephyr/drivers/eeprom/`
    - 功能: EEPROM 驱动
    - 支持: XEC

21. **熵驱动 (entropy/)**
    - 路径: `zephyr/drivers/entropy/`
    - 功能: 硬件随机数生成器
    - 支持: STM32, NXP, NRF, ESP32, GD32, SAM, INFINEON

22. **eSPI 驱动 (espi/)**
    - 路径: `zephyr/drivers/espi/`
    - 功能: 增强型串行外设接口
    - 支持: NPCX, XEC

23. **以太网驱动 (ethernet/)**
    - 路径: `zephyr/drivers/ethernet/`
    - 功能: 以太网驱动
    - 支持: STM32, NXP, SAM, TI, OPEN-AMP, OA_TC6

24. **Flash 驱动 (flash/)**
    - 路径: `zephyr/drivers/flash/`
    - 功能: Flash 存储驱动
    - 支持: STM32, NXP, NRF, ESP32, GD32, SAM, SAM0, SPI NOR, JESD216

25. **FPGA 驱动 (fpga/)**
    - 路径: `zephyr/drivers/fpga/`
    - 功能: FPGA 驱动
    - 支持: ICE40, MPFS, ZYNQMP, EOS_S3

26. **燃油表驱动 (fuel_gauge/)**
    - 路径: `zephyr/drivers/fuel_gauge/`
    - 功能: 电池燃油表驱动

27. **GNSS 驱动 (gnss/)**
    - 路径: `zephyr/drivers/gnss/`
    - 功能: 全球导航卫星系统驱动
    - 支持: U-BLOX, QUECTEL, SIMCOM

28. **GPIO 驱动 (gpio/)**
    - 路径: `zephyr/drivers/gpio/`
    - 功能: 通用输入输出驱动
    - 支持: STM32, NXP, NRF, ESP32, GD32, SAM, SAM0, GECKO, AMBIQ, ENE

29. **I2C 驱动 (i2c/)**
    - 路径: `zephyr/drivers/i2c/`
    - 功能: I2C 总线驱动
    - 支持: STM32, NXP, NRF, ESP32, GD32, SAM, SAM0, GECKO

30. **I3C 驱动 (i3c/)**
    - 路径: `zephyr/drivers/i3c/`
    - 功能: I3C 总线驱动
    - 支持: NXP, STM32

31. **IEEE 802.15.4 驱动 (ieee802154/)**
    - 路径: `zephyr/drivers/ieee802154/`
    - 功能: IEEE 802.15.4 无线驱动
    - 支持: STM32, NXP, NRF, TI, EFR32

32. **输入设备驱动 (input/)**
    - 路径: `zephyr/drivers/input/`
    - 功能: 输入设备驱动
    - 支持: 键盘, 鼠标, 触摸屏

33. **LED 驱动 (led/)**
    - 路径: `zephyr/drivers/led/`
    - 功能: LED 驱动
    - 支持: PWM, GPIO, LPD8806, LPD8863, WS2812

34. **LED 矩阵驱动 (led_strip/)**
    - 路径: `zephyr/drivers/led_strip/`
    - 功能: LED 矩阵驱动
    - 支持: WS2812, APA102

35. **MFD 驱动 (mfd/)**
    - 路径: `zephyr/drivers/mfd/`
    - 功能: 多功能设备驱动
    - 支持: AD559X, STMPE, STPMIC

36. **传感器驱动 (sensor/)**
    - 路径: `zephyr/drivers/sensor/`
    - 功能: 传感器驱动
    - 支持: 加速度计, 陀螺仪, 磁力计, 温度, 湿度, 压力, 光照, 距离, 气体等

37. **SPI 驱动 (spi/)**
    - 路径: `zephyr/drivers/spi/`
    - 功能: SPI 总线驱动
    - 支持: STM32, NXP, NRF, ESP32, GD32, SAM, SAM0, GECKO

38. **看门狗驱动 (watchdog/)**
    - 路径: `zephyr/drivers/watchdog/`
    - 功能: 看门狗定时器驱动
    - 支持: STM32, NXP, NRF, ESP32, GD32, SAM, SAM0, GECKO

39. **PS/2 驱动 (ps2/)**
    - 路径: `zephyr/drivers/ps2/`
    - 功能: PS/2 接口驱动

40. **脉宽调制驱动 (pwm/)**
    - 路径: `zephyr/drivers/pwm/`
    - 功能: PWM 驱动
    - 支持: STM32, NXP, NRF, ESP32, GD32, SAM, SAM0, GECKO, TI

41. **PTP 时钟驱动 (ptp_clock/)**
    - 路径: `zephyr/drivers/ptp_clock/`
    - 功能: 精确时间协议时钟驱动

42. **RTC 驱动 (rtc/)**
    - 路径: `zephyr/drivers/rtc/`
    - 功能: 实时时钟驱动
    - 支持: STM32, NXP, NRF, ESP32, GD32, SAM, SAM0, GECKO

43. **SD 卡驱动 (sd/)**
    - 路径: `zephyr/drivers/sd/`
    - 功能: SD 卡驱动
    - 支持: SDIO, SPI

44. **USB 驱动 (usb/)**
    - 路径: `zephyr/drivers/usb/`
    - 功能: USB 设备/主机驱动
    - 支持: USB 设备, USB 主机, USB CDC, USB HID, USB MSC, USB MIDI

45. **视频驱动 (video/)**
    - 路径: `zephyr/drivers/video/`
    - 功能: 视频设备驱动
    - 支持: 摄像头, 显示器

46. **VirtIO 驱动 (virtio/)**
    - 路径: `zephyr/drivers/virtio/`
    - 功能: VirtIO 半虚拟化驱动

47. **WiFi 驱动 (wifi/)**
    - 路径: `zephyr/drivers/wifi/`
    - 功能: WiFi 驱动
    - 支持: ESP32, NRF, INFINEON

48. **Zigbee 驱动 (zigbee/)**
    - 路径: `zephyr/drivers/zigbee/`
    - 功能: Zigbee 驱动

子系统模块 (subsys)
-----------------

子系统模块提供了高级功能和协议支持。

**路径**: `zephyr/subsys/`

主要子系统：

1. **蓝牙子系统 (bluetooth/)**
   - 路径: `zephyr/subsys/bluetooth/`
   - 功能: 蓝牙协议栈
   - 支持: BLE, BR/EDR, Mesh, Audio, ISO
   - API: bt_enable, bt_le_adv_start, bt_conn_le_create

2. **网络子系统 (net/)**
   - 路径: `zephyr/subsys/net/`
   - 功能: 网络协议栈
   - 支持: IPv4, IPv6, TCP, UDP, MQTT, CoAP, HTTP, WebSocket, LwM2M
   - API: net_context_get, net_pkt_alloc, net_recv_data

3. **USB 子系统 (usb/)**
   - 路径: `zephyr/subsys/usb/`
   - 功能: USB 协议栈
   - 支持: USB 设备, USB 主机, USB CDC, USB HID, USB MSC
   - API: usb_enable, usb_disable

4. **存储子系统 (storage/)**
   - 路径: `zephyr/subsys/storage/`
   - 功能: 存储管理
   - 支持: Flash, NVS, LittleFS, FATFS, File System
   - API: fs_open, fs_read, fs_write, fs_close

5. **电源管理子系统 (pm/)**
   - 路径: `zephyr/subsys/pm/`
   - 功能: 电源管理
   - 支持: 设备电源管理, 系统电源管理, 睡眠模式
   - API: pm_system_suspend, pm_device_action_run

6. **调试子系统 (debug/)**
   - 路径: `zephyr/subsys/debug/`
   - 功能: 调试支持
   - 支持: GDB stub, Core dump, Thread analyzer, Symbol table
   - API: gdbstub_init, coredump_trigger

7. **DFU 子系统 (dfu/)**
   - 路径: `zephyr/subsys/dfu/`
   - 功能: 设备固件升级
   - 支持: MCUboot, USB DFU, BLE DFU
   - API: dfu_target_init, dfu_target_write

8. **控制台子系统 (console/)**
   - 路径: `zephyr/subsys/console/`
   - 功能: 控制台支持
   - 支持: UART, USB CDC, RTT, Telnet
   - API: console_getchar, console_getline

9. **CAN 总线子系统 (canbus/)**
   - 路径: `zephyr/subsys/canbus/`
   - 功能: CAN 总线协议
   - 支持: ISO-TP, CANopen
   - API: isotp_send, isotp_bind

10. **DAP 子系统 (dap/)**
    - 路径: `zephyr/subsys/dap/`
    - 功能: CMSIS-DAP 支持
    - 支持: SWD, JTAG
    - API: dap_init, dap_connect

11. **文件系统子系统 (fs/)**
    - 路径: `zephyr/subsys/fs/`
    - 功能: 文件系统抽象
    - 支持: LittleFS, FATFS, FAT, FILE_SYSTEM
    - API: fs_mount, fs_unmount, fs_open, fs_read

12. **JWT 子系统 (jwt/)**
    - 路径: `zephyr/subsys/jwt/`
    - 功能: JSON Web Token
    - API: jwt_builder_init, jwt_builder_add_claim

13. **SD 子系统 (sd/)**
    - 路径: `zephyr/subsys/sd/`
    - 功能: SD 卡支持
    - 支持: MMC, SDIO
    - API: sd_init, sd_read_blocks, sd_write_blocks

14. **帧缓冲子系统 (fb/)**
    - 路径: `zephyr/subsys/fb/`
    - 功能: 帧缓冲支持
    - 支持: CFB
    - API: cfb_framebuffer_init, cfb_framebuffer_clear

15. **二进制描述子系统 (bindesc/)**
    - 路径: `zephyr/subsys/bindesc/`
    - 功能: 二进制描述信息
    - 支持: 版本, 构建时间, 主机信息
    - API: bindesc_get_version, bindesc_get_build_time

16. **需求分页子系统 (demand_paging/)**
    - 路径: `zephyr/subsys/demand_paging/`
    - 功能: 需求分页支持
    - API: z_demand_paging_init

17. **测试子系统 (testing/)**
    - 路径: `zephyr/subsys/testing/`
    - 功能: 测试框架
    - 支持: Ztest, Unity
    - API: ztest_test_suite, ztest_run_test_suite

库模块 (lib)
------------

库模块提供了各种实用库和算法支持。

**路径**: `zephyr/lib/`

主要库：

1. **ACPI 库 (acpi/)**
   - 路径: `zephyr/lib/acpi/`
   - 功能: ACPI 表解析
   - API: acpi_init, acpi_get_table

2. **C++ 库 (cpp/)**
   - 路径: `zephyr/lib/cpp/`
   - 功能: C++ 运行时支持
   - 支持: new/delete, 虚函数, 异常处理
   - API: operator new, operator delete

3. **CRC 库 (crc/)**
   - 路径: `zephyr/lib/crc/`
   - 功能: CRC 校验算法
   - 支持: CRC4, CRC7, CRC8, CRC16, CRC24, CRC32, CRC32C
   - API: crc4, crc7, crc8, crc16, crc24, crc32, crc32c

4. **Hash 库 (hash/)**
   - 路径: `zephyr/lib/hash/`
   - 功能: Hash 算法和 Hash Map
   - 支持: DJB2, Murmur3, Hash Map
   - API: hash_func32_djb2, hash_map_init, hash_map_put

5. **堆库 (heap/)**
   - 路径: `zephyr/lib/heap/`
   - 功能: 堆内存管理
   - 支持: 多堆, 堆统计, 堆验证
   - API: sys_heap_init, sys_heap_alloc, sys_heap_free

6. **C 库 (libc/)**
   - 路径: `zephyr/lib/libc/`
   - 功能: C 标准库
   - 支持: Minimal, Newlib, Picolibc, ARM stdc, ARC mwdt
   - API: 标准C函数

7. **内存块库 (mem_blocks/)**
   - 路径: `zephyr/lib/mem_blocks/`
   - 功能: 内存块管理
   - API: sys_mem_blocks_init, sys_mem_blocks_alloc

8. **Open-AMP 库 (open-amp/)**
   - 路径: `zephyr/lib/open-amp/`
   - 功能: 异构多核通信
   - 支持: RPMsg, VirtIO
   - API: openamp_init, resource_table_init

9. **操作系统库 (os/)**
   - 路径: `zephyr/lib/os/`
   - 功能: 操作系统实用函数
   - 支持: printk, assert, mutex, sem, reboot, poweroff
   - API: printk, __ASSERT, k_mutex_init, k_sem_init

10. **POSIX 库 (posix/)**
    - 路径: `zephyr/lib/posix/`
    - 功能: POSIX 兼容层
    - 支持: pthread, signal, timer, mqueue, semaphore, rwlock
    - API: pthread_create, pthread_mutex_lock, sem_wait

11. **运行时库 (runtime/)**
    - 路径: `zephyr/lib/runtime/`
    - 功能: 运行时支持

12. **状态机框架 (smf/)**
    - 路径: `zephyr/lib/smf/`
    - 功能: 状态机框架
    - API: smf_set_initial_state, smf_run_state

13. **工具库 (utils/)**
    - 路径: `zephyr/lib/utils/`
    - 功能: 实用工具
    - 支持: 十六进制, 十进制, JSON, UTF-8, 环形缓冲区
    - API: hex2bin, bin2hex, json_parse, utf8_trunc, ring_buf_init

架构模块 (arch)
--------------

架构模块提供了不同处理器架构的支持。

**路径**: `zephyr/arch/`

主要架构：

1. **ARM 架构 (arm/)**
   - 路径: `zephyr/arch/arm/`
   - 功能: ARM 架构支持
   - 支持: Cortex-M, Cortex-A, Cortex-R
   - 特性: MPU, MMU, FPU, TrustZone, SMP

2. **ARM64 架构 (arm64/)**
   - 路径: `zephyr/arch/arm64/`
   - 功能: ARM64 架构支持
   - 支持: Cortex-R, Xen
   - 特性: MMU, FPU, SMP

3. **ARC 架构 (arc/)**
   - 路径: `zephyr/arch/arc/`
   - 功能: ARC 架构支持
   - 支持: ARC EM, ARC HS
   - 特性: MPU, DSP, SecureShield

4. **MIPS 架构 (mips/)**
   - 路径: `zephyr/arch/mips/`
   - 功能: MIPS 架构支持
   - 支持: MIPS32, MIPS64

5. **Nios2 架构 (nios2/)**
   - 路径: `zephyr/arch/nios2/`
   - 功能: Nios II 架构支持
   - 支持: Nios II/f, Nios II/e

6. **RISC-V 架构 (riscv/)**
   - 路径: `zephyr/arch/riscv/`
   - 功能: RISC-V 架构支持
   - 支持: RV32, RV64
   - 特性: PMP, FPU, SMP

7. **x86 架构 (x86/)**
   - 路径: `zephyr/arch/x86/`
   - 功能: x86 架构支持
   - 支持: IA-32, x86_64
   - 特性: MMU, FPU, SMP

8. **Xtensa 架构 (xtensa/)**
   - 路径: `zephyr/arch/xtensa/`
   - 功能: Xtensa 架构支持
   - 支持: LX6, LX7
   - 特性: MMU, FPU, DSP

9. **SPARC 架构 (sparc/)**
   - 路径: `zephyr/arch/sparc/`
   - 功能: SPARC 架构支持
   - 支持: LEON3

10. **通用架构 (common/)**
    - 路径: `zephyr/arch/common/`
    - 功能: 架构无关代码
    - 支持: ISR 表, 中断管理, 时序

SoC 模块 (soc)
--------------

SoC 模块提供了各种片上系统的支持。

**路径**: `zephyr/soc/`

主要 SoC 系列：

1. **ADI SoC (adi/)**
   - 路径: `zephyr/soc/adi/`
   - 支持: MAX32

2. **Altera SoC (altr/)**
   - 路径: `zephyr/soc/altr/`
   - 支持: Nios II, Zephyr Nios2f

3. **Ambiq SoC (ambiQ/)**
   - 路径: `zephyr/soc/ambiq/`
   - 支持: Apollo3x, Apollo4x

4. **Andes Technology SoC (andestech/)**
   - 路径: `zephyr/soc/andestech/`
   - 支持: AE350

5. **ARM SoC (arm/)**
   - 路径: `zephyr/soc/arm/`
   - 支持: Beetle, DesignStart, FVP, MPS2, MPS3, Musca

6. **ASPEED SoC (aspeed/)**
   - 路径: `zephyr/soc/aspeed/`
   - 支持: AST10x0

7. **Atmel SoC (atmel/)**
   - 路径: `zephyr/soc/atmel/`
   - 支持: SAM, SAM0 (SAMC, SAMD, SAME, SAML, SAMR)

8. **Broadcom SoC (brcm/)**
   - 路径: `zephyr/soc/brcm/`
   - 支持: BCM2711, BCM2712, BCMVK

9. **Cadence SoC (cdns/)**
   - 路径: `zephyr/soc/cdns/`
   - 支持: DC233C

10. **Efinix SoC (efinix/)**
    - 路径: `zephyr/soc/efinix/`
    - 支持: Sapphire

11. **ENE SoC (ene/)**
    - 路径: `zephyr/soc/ene/`
    - 支持: KB1200

12. **Espressif SoC (espressif/)**
    - 路径: `zephyr/soc/espressif/`
    - 支持: ESP32, ESP32-C3, ESP32-C6, ESP32-S2, ESP32-S3

13. **Gaisler SoC (gaisler/)**
    - 路径: `zephyr/soc/gaisler/`
    - 支持: GR716A, LEON3

14. **GigaDevice SoC (gd/)**
    - 路径: `zephyr/soc/gd/`
    - 支持: GD32 (GD32A50x, GD32E10x, GD32E50x, GD32F3x0, GD32F403, GD32F4xx, GD32L23x, GD32VF103)

15. **Infineon SoC (infineon/)**
    - 路径: `zephyr/soc/infineon/`
    - 支持: CAT1A, CAT1B, CAT3

16. **Intel SoC (intel/)**
    - 路径: `zephyr/soc/intel/`
    - 支持: Alder Lake, Apollo Lake, Atom, Elkhart Lake, Intel ADSP, Intel ISH

17. **Microchip SoC (microchip/)**
    - 路径: `zephyr/soc/microchip/`
    - 支持: MEC, PIC32, SAM

18. **Nordic SoC (nordic/)**
    - 路径: `zephyr/soc/nordic/`
    - 支持: NRF51, NRF52, NRF53, NRF91, NRF54

19. **Nuvoton SoC (nuvoton/)**
    - 路径: `zephyr/soc/nuvoton/`
    - 支持: NPCX, NUC

20. **NXP SoC (nxp/)**
    - 路径: `zephyr/soc/nxp/`
    - 支持: i.MX, Kinetis, LPC, RW

21. **Renesas SoC (renesas/)**
    - 路径: `zephyr/soc/renesas/`
    - 支持: RA, RZ, Synergy

22. **SiFive SoC (sifive/)**
    - 路径: `zephyr/soc/sifive/`
    - 支持: Freedom, HiFive

23. **Silicon Labs SoC (silabs/)**
    - 路径: `zephyr/soc/silabs/`
    - 支持: EFR32, EZR32

24. **ST SoC (st/)**
    - 路径: `zephyr/soc/st/`
    - 支持: STM32 (F0, F1, F2, F3, F4, F7, H7, L0, L1, L4, L5, G0, G4, WB, WL)

25. **Telink SoC (telink/)**
    - 路径: `zephyr/soc/telink/`
    - 支持: B91, B85

26. **TI SoC (ti/)**
    - 路径: `zephyr/soc/ti/`
    - 支持: CC13xx, CC26xx, CC32xx, MSP432, Sitara

27. **Xilinx SoC (xilinx/)**
    - 路径: `zephyr/soc/xilinx/`
    - 支持: Zynq, MicroBlaze

28. **Xen SoC (xen/)**
    - 路径: `zephyr/soc/xen/`
    - 支持: Xen

开发板模块 (boards)
------------------

开发板模块提供了各种开发板的支持。

**路径**: `zephyr/boards/`

主要开发板系列：

1. **96boards (96boards/)**
   - 路径: `zephyr/boards/96boards/`
   - 支持: HiKey, Dragonboard, Wistrio

2. **Arduino (arduino/)**
   - 路径: `zephyr/boards/arduino/`
   - 支持: Due, Zero, MKR, Nano 33

3. **ARM (arm/)**
   - 路径: `zephyr/boards/arm/`
   - 支持: MPS2, MPS3

4. **Espressif (espressif/)**
   - 路径: `zephyr/boards/espressif/`
   - 支持: ESP32, ESP32-C3, ESP32-C6, ESP32-S2, ESP32-S3

5. **Nordic (nordic/)**
   - 路径: `zephyr/boards/nordic/`
   - 支持: nRF51, nRF52, nRF53, nRF91, nRF54

6. **NXP (nxp/)**
   - 路径: `zephyr/boards/nxp/`
   - 支持: i.MX, Kinetis, LPC, FRDM

7. **Raspberry Pi (raspberrypi/)**
   - 路径: `zephyr/boards/raspberrypi/`
   - 支持: Pico, Pico W, Compute Module

8. **ST (st/)**
   - 路径: `zephyr/boards/st/`
   - 支持: Nucleo, Discovery, Evaluation

9. **TI (ti/)**
   - 路径: `zephyr/boards/ti/`
   - 支持: LaunchPad, SensorTag

10. **QEMU (qemu/)**
    - 路径: `zephyr/boards/qemu/`
    - 支持: x86, ARM, RISC-V, Nios2, ARC, Xtensa

设备树模块 (dts)
----------------

设备树模块提供了设备树支持。

**路径**: `zephyr/dts/`

主要功能：

1. **公共设备树 (common/)**
   - 路径: `zephyr/dts/common/`
   - 功能: 通用设备树定义
   - 支持: 内存, GPIO, 中断, 时钟

构建系统模块 (cmake)
-------------------

构建系统模块提供了 CMake 构建支持。

**路径**: `zephyr/cmake/`

主要功能：

1. **构建工具 (cfb.cmake)**
   - 路径: `zephyr/cmake/cfb.cmake`
   - 功能: 帧缓冲构建支持

2. **HEX 文件生成 (hex.cmake)**
   - 路径: `zephyr/cmake/hex.cmake`
   - 功能: HEX 文件生成

3. **内核对象 (kobj.cmake)**
   - 路径: `zephyr/cmake/kobj.cmake`
   - 功能: 内核对象生成

4. **VIF (vif.cmake)**
   - 路径: `zephyr/cmake/vif.cmake`
   - 功能: VIF 生成

脚本和工具模块 (scripts)
-----------------------

脚本和工具模块提供了各种构建和开发工具。

**路径**: `zephyr/scripts/`

主要工具：

1. **Twister 测试框架 (twister)**
   - 路径: `zephyr/scripts/twister`
   - 功能: 自动化测试框架
   - 用途: 运行测试, 生成报告

2. **标签生成 (tags.sh)**
   - 路径: `zephyr/scripts/tags.sh`
   - 功能: 生成代码标签
   - 用途: 代码导航

其他重要模块
------------

1. **模块 (modules/)**
   - 路径: `zephyr/modules/`
   - 功能: 外部模块管理
   - 支持: FS, HAL

2. **文档 (doc/)**
   - 路径: `zephyr/doc/`
   - 功能: 文档生成
   - 支持: Sphinx, RST

3. **测试 (tests/)**
   - 路径: `zephyr/tests/`
   - 功能: 测试用例
   - 支持: 内核, 驱动, 子系统, 网络

4. **示例 (samples/)**
   - 路径: `zephyr/samples/`
   - 功能: 示例代码
   - 支持: 基础, 网络, 蓝牙, 传感器

模块使用指南
------------

1. **启用模块**
   - 在 Kconfig 中启用相关配置选项
   - 例如: `CONFIG_BT=y` 启用蓝牙模块

2. **使用 API**
   - 包含相应的头文件
   - 例如: `#include <zephyr/kernel.h>`

3. **配置模块**
   - 使用 Devicetree 配置硬件
   - 使用 Kconfig 配置软件选项

4. **调试模块**
   - 启用日志: `CONFIG_LOG=y`
   - 启用跟踪: `CONFIG_TRACING=y`

总结
----

Zephyr RTOS 提供了丰富的模块支持，涵盖了从内核到应用层的各个方面。通过合理使用这些模块，开发者可以快速构建高效、可靠的嵌入式系统。

主要模块分类：
- 内核模块：提供基本的 RTOS 功能
- 驱动模块：支持各种硬件设备
- 子系统模块：提供高级功能和协议
- 库模块：提供实用工具和算法
- 架构模块：支持不同的处理器架构
- SoC 模块：支持各种片上系统
- 开发板模块：支持各种开发板

每个模块都有详细的文档和示例代码，开发者可以根据需要选择和配置相应的模块。
