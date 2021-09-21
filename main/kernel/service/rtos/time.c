#include "os.h"

void task_delay(uint32_t delay) 
{
    uint32_t status = task_enter_critical();
    task_time_wait(current_task, delay);
    task_sched_not_ready(current_task);
    task_sched();
    task_exit_critical(status);
}
