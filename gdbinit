display/z $r0
display/z $r1
display/z $r2
display/z $r3
display/z $r4
display/z $sp
display/z $pc
display/z $lr
display/z $xpsr

target remote localhost:1234
load
set disassemble-next-line on
b _start
c
