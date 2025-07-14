#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "shell.h"
#include "serial.h"
#include "hal.h"

uint8_t shell_get_line(char *line, uint8_t max_len)
{
    char chr;
    static uint8_t count = 0;
    // lite_getchar(&chr);
    serial_read(&chr, 1);
    {
        if (count >= max_len)
        {
            count = 0;
            return 1;
        }
        line[count] = chr;
        switch (chr)
        {
        case 0x08:
        case 0x7F:
        {
            if (count > 0)
            {
                count--;
            }
        }
        break;

        case '\r':
        case '\n':
        {
            line[count] = '\0';
            count = 0;
            return 1;
        }
        break;

        default:
            count++;
        }
        // lite_putchar(chr);
        serial_write(&chr, 1);
    }
    return 0;
}

uint8_t shell_get_args(char *line, char *args[], uint8_t args_len)
{
    uint8_t i, ret;
    char *ptr = NULL;
    ptr = strtok(line, " ");
    for (i = 0; ptr != NULL && i < args_len; i++)
    {
        args[i] = ptr;
        ptr = strtok(NULL, ",");
    }
    ret = i;
    return ret;
}

typedef shell_command_t *shell_command_pointer_t;

int shell_help_func(int argc, char **argv)
{
    shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    {
        printf("[%s] %s\n", shell_command->name, shell_command->type);
    }
    return 0;
}
__shell_command_init(help, "show all commands", shell_help_func);
#if 0
shell_command_t shell_help = {
    .name = "help",
    .help = "show all commands"
};
extern uint32_t	__shell_command_start;
extern uint32_t	__shell_command_end;

shell_command_t * shell_command_help __attribute__((section(".shell_command"))) = &shell_help;

    lite_printf("&__shell_command_start=0x%x &__shell_command_end=0x%x\r\n",\
        &__shell_command_start, &__shell_command_end);
    shell_command_t * scmd = &__shell_command_start;
#endif

void shell_main(void)
{
#define MAX_SHELL_ARGS 32
#define MAX_SHELL_LINE_LENGTH 128
    char line[MAX_SHELL_LINE_LENGTH] = {0};
    char *shell_args[MAX_SHELL_ARGS] = {0};

    uint8_t args_count = 0;
    while (1)
    {
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
        {
            printf("\n");
            args_count = shell_get_args(line, shell_args, MAX_SHELL_ARGS);
            if (args_count > 0)
            {
                shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
                {
                    if (strcmp(shell_command->name, shell_args[0]) == 0)
                    {
                        shell_command->func(args_count - 1, &shell_args[1]);
                    }
                    else if (strcmp("exit", shell_args[0]) == 0)
                    {
                        return;
                    }
                    else
                    {
                        printf("unknown shell command \'%s\'\n", line);
                    }
                }
                // for (i = 0; sysCmd[i]; i++)
                // {
                //     if (strcmp(sysCmd[i]->name, shell_args[0]) == 0)
                //     {
                //         int value = sysCmd[i]->fun(args_count - 1, &shell_args[1]);
                //         printf("value %d = 0x%x\r\n", value, value);
                //         return 1;
                //     }
                // }
                // if (sysCmd[i] == NULL)
                // {
                //     printf("C interp: unknown symbol name \'%s\' \r\n", line);
                // }
            }
            printf("zsh->");
        }
    }
    return;
}

void shell_start(void)
{
// setvbuf(stdout, NULL, _IONBF, 0);
// setvbuf(stdin, NULL, _IONBF, 0);
    shell_main();
}