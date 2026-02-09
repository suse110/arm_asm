CONFIG_LOG_PRINTK
定义此配置后，log不会实时输出

下面这样，log会实时输出
CONFIG_PRINTK=y
CONFIG_LOG_PRINTK=n --> 会调用 char_out 将字符打印出去
CONFIG_PRINTK_SYNC=y --> 会在打log之前调用k_spin_lock上锁，防止其他thread 插入打断当前log 打印
