[QEMU固件模拟技术-stm32仿真分析及IRQ仿真实践](https://forum.butian.net/share/124)
[设备类型注册](https://richardweiyang-2.gitbook.io/understanding_qemu/00-devices/01-type_register)
[浅谈QEMU的对象系统](https://www.jianshu.com/p/4a9d26abb44d)

##STM32F405 SOC 实现

qemu设备模型中使用名称作为类型的唯一标识的，并且还存在了父子关系

```
static const TypeInfo stm32f405_soc_info = {
    //做为type_table的key
    .name          = TYPE_STM32F405_SOC, 
    //父类型，这个比较重要，如果本TypeInfo没有设置class_size，会根据parent获取parent TypeImpl的class_size
    .parent        = TYPE_SYS_BUS_DEVICE,
    .instance_size = sizeof(STM32F405State),//分配实例的大小
    .instance_init = stm32f405_soc_initfn,
    .class_init    = stm32f405_soc_class_init,
};

static void stm32f405_soc_types(void)
{
    type_register_static(&stm32f405_soc_info);
}

type_init(stm32f405_soc_types)

```

1. type_init->module_init() 注册初始化函数
   ```
    include\qemu\module.h

    #define type_init(function) module_init(function, MODULE_INIT_QOM)
    #define module_init(function, type)                                         \
    static void __attribute__((constructor)) do_qemu_init_ ## function(void)    \
    {                                                                           \
        register_module_init(function, type);                                   \
    }
   ```
   * __attribute__((constructor)) 用法参考[GCC Common Function Attributes](https://gcc.gnu.org/onlinedocs/gcc-6.2.0/gcc/Common-Function-Attributes.html)
      * 意思就是在main函数之前按执行,destructor是让函数在main()执行完毕或者call 了exit()后执行，还可以通过priority指定函数执行的顺序
    > constructor (priority)\
    > destructor (priority)\
    >    The constructor attribute causes the function to be called automatically before execution enters main (). Similarly, the destructor attribute causes the function to be called automatically after main () completes or exit () is called. Functions with these attributes are useful for initializing data that is used implicitly during the execution of the program.

    * 所以 type_init()会生产一个函数，do_qemu_init_stm32f405_soc_types(),它会在main函数之前执行
    * register_module_init()把 stm32f405_soc_types 这个函数挂在了一个 MODULE_INIT_QOM 类型的链表中
    * stm32f405_soc_types 会在main函数中执行
    ```
    bsd-user\main.c

    int main(int argc, char **argv) {
        ...
        module_call_init(MODULE_INIT_TRACE);
        qemu_init_cpu_list();
        module_call_init(MODULE_INIT_QOM);
        ...
    }
    ```
    
2. type_register_static->type_register()->type_register_internal()  
   * 通过type_new()生成一个TypeInfo对应的TypeImpl类型
   * 并以name为关键字将TypeImpl添加到名为 type_table 的一个hash table中
   ```
    static TypeImpl *type_register_internal(const TypeInfo *info)
    {
        TypeImpl *ti;
        ti = type_new(info);

        type_table_add(ti);
        return ti;
    }
   ```
3. TypeInfo
   TypeInfo是面向API使用者的一个工具类，使用者只是在注册类型的时候，提供TypeInfo所包含的信息（包括方法中的回调函数），然后系统会自动生成一个TypeImpl存储起来，至此TypeInfo的生命周期就结束了
    ```
    struct TypeInfo
    {
        const char *name;//类型名
        const char *parent;//父类型名

        size_t instance_size;//对象实例大小
        size_t instance_align;
        void (*instance_init)(Object *obj);//对象实例初始化
        void (*instance_post_init)(Object *obj);//在init后执行
        void (*instance_finalize)(Object *obj);//对象实例销毁时执行，释放资源

        bool abstract;//如果位true，则位抽线类型，不能直接实例
        size_t class_size;
        //类对象实例初始化函数，初始化自己的方法指针，也可覆盖父类的方法指针
        void (*class_init)(ObjectClass *klass, void *data);
        //在弗雷的class_init执行完，自己的calss_init执行之前执行，做一些清理工作
        void (*class_base_init)(ObjectClass *klass, void *data);
        void *class_data;

        InterfaceInfo *interfaces;//类型定义的接口信息名称数组
    };
    ```

DeviceClass实例化细节

4. 命令行参数 -kernel 指定的文件加载到虚拟内存
    hw\arm\armv7m.c:armv7m_load_kernel()

