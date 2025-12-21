struct Object 有struct ObjectClass ->

### QOM类型基础
```
//The base for all classes
struct ObjectClass
{
    /* private: */
    Type type;
    GSList *interfaces;

    const char *object_cast_cache[OBJECT_CLASS_CAST_CACHE];
    const char *class_cast_cache[OBJECT_CLASS_CAST_CACHE];

    ObjectUnparent *unparent;

    GHashTable *properties;
};

//The base for all objects.
struct Object
{
    /* private: */
    ObjectClass *class;//指向
    ObjectFree *free;
    GHashTable *properties;
    uint32_t ref;
    Object *parent;
};

```
### QOM类对象
以 ObjectClass 为基础构建
```
struct MachineClass {
    ObjectClass parent_class;
};
struct BusClass {
    ObjectClass parent_class;
};
struct DeviceClass {
    ObjectClass parent_class;
};
以 struct DeviceClass; 为第一个元素
struct CPUClass {
    DeviceClass parent_class;
};
struct RISCVCPUClass {
    CPUClass parent_class;
};

```

### QOM类实例对象
以 Object为基础构建
```
struct MachineState {
    Object parent_obj;
}
struct BusState {
    Object obj;
    DeviceState* parent;
}
struct I2CState {
    BusState qbus;
}

struct DeviceState {
    Object parent_obj;
}

struct SysBusDevice {
    DeviceState parent_obj;
}
struct NucLeiGpioState {
    SysBusDevice parent_obj;
    MemoryRegion iomem;
}

```

### DeviceClass实例化细节
* DeviceClass相关的父类和对应的对象之间的关系
```
      +--------------------------+                           +----------------------+
      |                          |                           |                      |
      |   ObjectClass            | <-------------------------|    Object            |
      |     class_init           |                           |    instance_init     |
      |                          |                           |(object_instance_init)|
      +--------------------------+                           +----------------------+
                |                                                      |
                |                                                      |
                |                                                      |
                v                                                      v
      +--------------------------+                           +----------------------+
      |                          |                           |                      |
      |   DeviceClass            |  <---------------------   |   DeviceState        |
      |     class_init           |                           |      instance_init   |
      |     (device_class_init)  |                           |      (device_initfn) |
      |                          |                           |                      |
      |     realize              |  overwrite by child class |                      |
      |     unrealize            |                           |                      |
      +--------------------------+                           +----------------------+
```
* DeviceClass实例化函数device_initfn
  
### 主要结构体
* Object
* ObjectClass
* TypeInfo
* TypeImpl
* InterfaceInfo
* InterfaceClass
  
### 初始化Machine
1. 定义设备
    ```
    struct STM32F405State {
        /*< private >*/
        SysBusDevice parent_obj;
        /*< public >*/
    }
    ```
2. SOC设备注册
3. Machine设备注册
4. 修改编译文件
   * hw/riscv/Kconfig
   * hw/riscv/meson.build
