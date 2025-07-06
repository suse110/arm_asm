#include "main.h"
#include "FreeRTOS.h"
#include "task.h"

#if 0
void fault_test_by_unalign(void) {
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    volatile int * p;
    volatile int value;

    *SCB_CCR |= (1 << 3); /* bit3: UNALIGN_TRP. */

    p = (int *) 0x00;
    value = *p;
    printf("addr:0x%02X value:0x%08X\r\n", (int) p, value);

    p = (int *) 0x04;
    value = *p;
    printf("addr:0x%02X value:0x%08X\r\n", (int) p, value);

    p = (int *) 0x03;
    value = *p;
    printf("addr:0x%02X value:0x%08X\r\n", (int) p, value);
}

void fault_test_by_div0(void) {
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    int x, y, z;

    *SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */

    x = 10;
    y = 0;
    z = x / y;
    printf("z:%d\n", z);
}
#endif

typedef struct
{
  char *name;
  char *help;

} shell_command_t;

shell_command_t shell_help = {
    .name = "help",
    .help = "show all commands"};
extern uint32_t __shell_command_start;
extern uint32_t __shell_command_end;

// shell_command_t shell_command_help __attribute__((section(".shell_command"))) = {
//     .name = "help",
//     .help = "show all commands"
// };
// shell_command_t* shell_command_help __attribute__((section(".shell_command"))) = &shell_help;
// p (*(shell_command_t*)*(uint32_t*)(&__shell_command_start)).name

void vTaskCode(void *pvParameters)
{
  uint32_t i = 0, j = 0;
  for (;;)
  {

    printf("------------[%s]------------\n", __func__);

    // vTaskDelay(1);
  }
}

void MainTaskCreate(void)
{
  static uint8_t ucParameterToPass;
  TaskHandle_t xHandle = NULL;

  // Create the task, storing the handle.  Note that the passed parameter ucParameterToPass
  // must exist for the lifetime of the task, so in this case is declared static.  If it was just an
  // an automatic stack variable it might no longer exist, or at least have been corrupted, by the time
  // the new task attempts to access it.
  // printf("start create stask\n");
  xTaskCreate(vTaskCode, "NAME", 1024, &ucParameterToPass, tskIDLE_PRIORITY, &xHandle);
  // printf("start create stask done\n");
  configASSERT(xHandle);

  // Use the handle to delete the task.
  if (xHandle == NULL)
  {
    printf("create stask fail\n");
  }
}
int main(void)
{

  /* Output a message on Hyperterminal using printf function */
  printf("\n\r -- UART Printf Example: retarget the C library printf function to the UART, %d\n\r", 10 / 3);
  // __asm("svc 0");

  //   printf("&__shell_command_start=0x%x &__shell_command_end=0x%x\r\n",\
        &__shell_command_start, &__shell_command_end);
  // shell_command_t * scmd = &__shell_command_start;

  // task_start();
  // exception_test();
  // backtrace_test();
  MainTaskCreate();
  vTaskStartScheduler();
  while (1)
  {
  }
}

/**
 * @brief  This function is executed in case of error occurrence.
 * @param  None
 * @retval None
 */
void Error_Handler(void)
{
  /* Turn LED2 on */
  // BSP_LED_On(LED2);
  while (1)
  {
  }
}

#ifdef USE_FULL_ASSERT
/**
 * @brief  Reports the name of the source file and the source line number
 *         where the assert_param error has occurred.
 * @param  file: pointer to the source file name
 * @param  line: assert_param error line source number
 * @retval None
 */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
#ifdef CM_BACKTRACE_ENABLE
  cm_backtrace_assert(cmb_get_sp());
#endif
  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
 * @}
 */

/**
 * @}
 */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
