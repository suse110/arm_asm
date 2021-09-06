### GDB Python scripting
https://undo.io/resources/gdb-watchpoint/python-gdb/
https://www.sourceware.org/gdb/onlinedocs/gdb/Python.html

```
~/.gdbinit
define hook_continue
    # Enable automatic halt for HardFault Exception using
    #by setting DEMCR->VC_HARDERR
    set *((uint32_t*)0xE000EDFC) |= 0x0000400
end
```

```
define fault_regs
    set $cfsr = *(uint32_t*)0xE000ED28
    printf "CFSR:0x%08x\n", $cfsr
    if $cfsr & 0x8000
        printf "BusFault Address Valid:0x%08x\n", *(uint32_t*)0xE000ED38
    end
end
```

```
define unwind_stack
    # Set registers to their state prior to exception entry
    # to investigate origin of fault
    set $exc_frame = ($lr & 0x4) ? $psp : $msp
    set $stacked_xpsr = ((uint32_t*)$exc_frame)[7]
    set $exc_frame_len = 32 + (($stacked_xpsr) ? 0x4 : 0x0) + (($lr & 0x10) ? 0 : 72)
    set $sp=($exc_frame + $exc_frame_len)
    set #lr=((uint32_t*)$exc_frame))[5]
    set #pc=((uint32_t*)$exc_frame))[6]
end
```