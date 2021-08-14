#ifndef __SHELL_H__
#define __SHELL_H__

typedef int (*shell_function_t)(int argc, char **argv);

typedef struct {
    char *name;
    char *type;
    shell_function_t func;
} shell_command_t;

extern uint32_t __shell_command_start;
extern uint32_t __shell_command_end;

#define __shell_command_section __attribute__((section(".shell_command")))
#define __shell_command_init(name, help, func)\
    __shell_command_section shell_command_t __shell_command_##name = {#name, help, func}

void shell_start(void);

#endif // __SHELL_H__
