
main->qemu_init->qemu_init_subsystems->module_call_init->{mps2_machine_init}->type_register_static->type_register_internal->type_new
                 qemu_create_machine->select_machine->object_class_get_list->object_class_foreach->object_class_foreach_tramp->type_initialize->{
                    mps2_class_init,mps2_an500_class_init,mps2_an511_class_init,mps2_an385_class_init,mps2_an386_class_init=TypeInfo::calss_init
                 }

type_initialize->{machine_class_init=TypeInfo machine_info::class_init}  
                                            |
select_machine->find_machine{找到`MachineClass`}:再通过`MachineClass`找到`MachineState*`对象，赋值给`current_machine`
                  `current_machine = MACHINE(object_new_with_class(OBJECT_CLASS(machine_class)));`
qemu_init->qmp_x_exit_preconfig->qemu_init_board->machine_run_board_init->

main(int argc, char ** argv)              (\mnt\f\workspace\qemu-src\qemu-8.2.0\system\main.c:48)
qemu_init(int argc, char ** argv)         (\mnt\f\workspace\qemu-src\qemu-8.2.0\system\vl.c:2781)
  `module_call_init(MODULE_INIT_OPTS)` --> `opts_init`
qemu_init_subsystems()                    (\mnt\f\workspace\qemu-src\qemu-8.2.0\system\runstate.c:817)
  call 初始化函数：
  
  `module_call_init(MODULE_INIT_TRACE);` --> `trace_init`
  `module_call_init(MODULE_INIT_QOM);`  --> `type_init`
  `module_call_init(MODULE_INIT_MIGRATION);` --> `migration_init`

  `module_call_init(MODULE_INIT_BLOCK);` --> `block_init` 

module_call_init(module_init_type type)   (\mnt\f\workspace\qemu-src\qemu-8.2.0\util\module.c:109)
  通过`MODULE_INIT_QOM`，在 `init_type_list` 找到 QOM list, 遍历list里的`ModuleEntry`对象，call他的init函数
  ```c
  typedef struct ModuleEntry
  {
      void (*init)(void);
      QTAILQ_ENTRY(ModuleEntry) node;
      module_init_type type;
  } ModuleEntry;
  ```
  而 `init_type_list`里的`ModuleEntry`对象`init`函数是在模块的文件中通过`type_init`注册。
    `#define type_init(function) module_init(function, MODULE_INIT_QOM)`
    `module_init` 是一个宏定义，他会生成一个`do_qemu_init_##function`函数，这个函数加上了 __attribute__((constructor)) 属性，
    在这个do_qemu_init_##function 里会call到 `void register_module_init(void (*fn)(void), module_init_type type)` ,他会malloc一个ModuleEntry对象，将 `fn` 注册到init函数，挂在`init_type_list`的QOM list中 
  在我这个例子中call了`mps2_machine_init`函数,`hw/arm/mps2.c`
type_register_static(const TypeInfo *info)    (\mnt\f\workspace\qemu-src\qemu-8.2.0\qom\object.c:156)
type_register(const TypeInfo * info)          (\mnt\f\workspace\qemu-src\qemu-8.2.0\qom\object.c:153)
type_register_internal(const TypeInfo * info) (\mnt\f\workspace\qemu-src\qemu-8.2.0\qom\object.c:153)
type_new(const TypeInfo * info)               (\mnt\f\workspace\qemu-src\qemu-8.2.0\qom\object.c:125)
  malloc `TypeImpl`实例化对象，将user填写的`TypeInfo`对象都复制到`TypeImpl`对象中，`type_table_lookup`函数找到全局的额hash表，看是否已经注册了这个对象，重复注册会出错。通过`type_table_add`将`TypeImpl`实例化对象挂在全局hash表中



