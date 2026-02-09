kernel/sched.c
```c

k_msleep()
	k_sleep()
		z_impl_k_sleep()
			z_tick_sleep()
				z_swap()
					z_swap_irqlock()
						arch_swap() --> trigger pendsv

	    
```