# add riscv device

* add include/hw/riscv/nuclei_n.h
* add hw/riscv/nuclei_n.c
* hw/riscv/Kconfig add config
  ```
  config NUCLEI_N
    bool
    select MSI_NONBROKEN
    select UNIMP
  ```
* hw/riscv/meson.build add build configuration
  `riscv_ss.add(when: 'CONFIG_NUCLEI_N', if_true: files('nuclei_n.c'))`
* configs/devices/riscv32-softmmu/default.mak 
  `CONFIG_NUCLEI_N=y`
* target/riscv/cpu-qom.h add cpu
  `#define TYPE_RISCV_CPU_NUCLEI_N600       RISCV_CPU_TYPE_NAME("nuclei-n600")`
* target/riscv/cpu.c define cpu 
  add `DEFINE_CPU(TYPE_RISCV_CPU_NUCLEI_N600,      rv32_nuclei_n_cpu_init),` in `static const TypeInfo riscv_cpu_type_infos[]` array
    

