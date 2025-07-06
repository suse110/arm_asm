struct Object 有struct ObjectClass ->

在QUME中，我们通常一个对象的初始化分为四步：

* 将 TypeInfo 注册 TypeImpl
```
struct TypeInfo
{
    const char *name;
    const char *parent;

    size_t instance_size;
    void (*instance_init)(Object *obj);
    void (*instance_post_init)(Object *obj);
    void (*instance_finalize)(Object *obj);

    bool abstract;
    size_t class_size;

    void (*class_init)(ObjectClass *klass, void *data);
    void (*class_base_init)(ObjectClass *klass, void *data);
    void *class_data;

    InterfaceInfo *interfaces;
};
```
其中的重点有：

+ Name ：包含了自己的名字name和parent的名字的parent。
+ Class（针对ObjectClass） ： ObjectClass的信息包括，class_size，class_data，class相关函数：class_base_init，class_init，class_finalize等。这些函数都是为了初始化，释放结构体ObjectClass。
+ Instance（针对的是Object）： 对象Object信息包括：instance_size，instance相关函数：instance_post_init，instance_init，instance_finalize。这些函数都是为了初始化，释放结构体Object。
+ 其他信息：abstract是否为抽象。interface数组。

一般是定义一个TypeInfo，然后调用 type_register(TypeInfo) 或者 type_register_static(TypeInfo) 函数（使用type_register_static比较多），就会生成相应的TypeImpl实例，将这个TypeInfo注册到全局的TypeImpl的hash表中
我们来看一个例程
```
#define TYPE_MY_DEVICE "my-device"

static void my_device_class_init(ObjectClass *oc, void *data)
{
}
static void my_device_init(Object *obj)
{
}

typedef struct MyDeviceClass
{
	DeviceClass parent;
	void (*init) (MyDevice *obj);
} MyDeviceClass;

typedef struct MyDevice
{
	DeviceState parent;
	int reg0, reg1, reg2;
}MyDevice;

static const TypeInfo my_device_info = {
	.name = TYPE_MY_DEVICE,
	.parent = TYPE_DEVICE,
	.instance_size = sizeof(MyDevice),
	.instance_init = my_device_init,
	.class_size = sizeof(MyDeviceClass),
	.class_init = my_device_class_init,
};


static void my_device_register_types(void)
{
	type_register_static(&my_device_info);
}
type_init(my_device_register_types)

```
其中的代码
```
static void my_device_register_types(void)
{
	type_register_static(&my_device_info);
}
type_init(my_device_register_types)

```
也可以简化为
`DEFINE_TYPES(my_device_infos)`
## 举个实际的例子
+ 定义设备
```
/* SOC state定义 */
#define TYPE_NUCLEI_HBIRD_SOC "riscv.nuclei.hbird.soc"
#define RISCV_NUCLEI_HBIRD_SOC(obj) \
OBJECT_CHECK(NucleiHBSoCState, (obj), TYPE_NUCLEI_HBIRD_SOC)
typedef struct NucleiHBSoCState
{
	/*< private >*/
	SysBusDevice parent_obj;
	/*< public >*/
} NucleiHBSoCState;

/* Machine state定义 */
#define TYPE_HBIRD_FPGA_MACHINE MACHINE_TYPE_NAME("hbird_fpga")
#define HBIRD_FPGA_MACHINE(obj) \
OBJECT_CHECK(NucleiHBState, (obj), TYPE_HBIRD_FPGA_MACHINE)
typedef struct
{
	/*< private >*/
	SysBusDevice parent_obj;
	/*< public >*/
	NucleiHBSoCState soc;
} NucleiHBState;

```
+ SOC设备注册
```
static void nuclei_soc_init(Object *obj)
{
	qemu_log(">>nuclei_soc_init \n");
}
static void nuclei_soc_realize(DeviceState *dev, Error **errp)
{
	qemu_log(">>nuclei_soc_realize \n");
}
static void nuclei_soc_class_init(ObjectClass *oc, void *data)
{
	qemu_log(">>nuclei_soc_class_init \n");
	DeviceClass *dc = DEVICE_CLASS(oc);
	dc->realize = nuclei_soc_realize;
	dc->user_creatable = false;
}

static const TypeInfo nuclei_soc_type_info = {
	.name = TYPE_NUCLEI_HBIRD_SOC,
	.parent = TYPE_DEVICE,
	.instance_size = sizeof(NucleiHBSoCState),
	.instance_init = nuclei_soc_init,
	.class_init = nuclei_soc_class_init,
};
static void nuclei_soc_register_types(void)
{
type_register_static(&nuclei_soc_type_info);
}
type_init(nuclei_soc_register_types)

```
可以看见我们是在 nuclei_soc_class_init 设定了实例的成员函数实现 nuclei_soc_realize 。这里是需要理清的关系
+ Machine设备注册
```
static void nuclei_board_init(MachineState *machine)
{
	NucleiHBState *s = HBIRD_FPGA_MACHINE(machine);
	qemu_log(">>nuclei_board_init \n");
	/* Initialize SOC */
	object_initialize_child(OBJECT(machine), "soc", &s->soc, TYPE_NUCLEI_HBIRD_SOC);
	qdev_realize(DEVICE(&s->soc), NULL, &error_abort);
}
static void nuclei_machine_instance_init(Object *obj)
{
	qemu_log(">>nuclei_machine_instance_init \n");
}
static void nuclei_machine_class_init(ObjectClass *oc, void *data)
{
	qemu_log(">>nuclei_machine_class_init \n");
	MachineClass *mc = MACHINE_CLASS(oc);
	mc->desc = "Nuclei HummingBird Evaluation Kit";
	mc->init = nuclei_board_init;
}

static const TypeInfo nuclei_machine_typeinfo = {
	.name = MACHINE_TYPE_NAME("hbird_fpga"),
	.parent = TYPE_MACHINE,
	.class_init = nuclei_machine_class_init,
	.instance_init = nuclei_machine_instance_init,
	.instance_size = sizeof(NucleiHBState),
};
static void nuclei_machine_init_register_types(void)
{
	type_register_static(&nuclei_machine_typeinfo);
}
type_init(nuclei_machine_init_register_types)

```
+ 修改编译文件
  + hw/riscv/Kconfig:
```
config NUCLEI_N
bool
select MSI_NONBROKEN
select UNIMP

```
  + hw/riscv/meson.build:
```
riscv_ss = ss.source_set()
riscv_ss.add(files('boot.c'), fdt)
riscv_ss.add(files('numa.c'))
riscv_ss.add(files('riscv_hart.c'))
...
riscv_ss.add(when: 'CONFIG_NUCLEI_N', if_true: files('nuclei_n.c'))

hw_arch += {'riscv': riscv_ss}
```
  + configs\devices\riscv32-softmmu\default.mak:
`CONFIG_NUCLEI_N=y`


* 实例化 ObjectClass
* 实例化 Object
* 添加 Property


QOM模型的实现代码位于qom/文件夹下的文件中，这涉及了几个结构TypeImpl, ObjectClass, Object和TypeInfo。看了下它们的定义都在/include/qom/object.h可以找到，只有TypeImpl的具体结构是在/qom/object.c中

### QOM类型基础
```
//The base for all classes. ObjectClass: 是所有类对象的基类，第一个成员变量为类型typedef struct TypeImpl *的type
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

//The base for all objects. Object: 是所有对象的 基类Base Object ， 第一个成员变量为指向 ObjectClass类型的指针
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
* Object : 是所有对象的 基类Base Object ， 第一个成员变量为指向 ObjectClass类型的指针
* ObjectClass : 是所有类对象的基类，第一个成员变量为类型typedef struct TypeImpl *的type
* TypeInfo ：是用户用来定义一个 Type 的工具型的数据结构
* TypeImpl : 对数据类型的抽象数据结构，TypeInfo的属性与TypeImpl的属性对应
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
