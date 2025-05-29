    .section .data
msg:    .ascii "Hello from GAS!\n"
len = . - msg

    .section .text
    .global _start
_start:
    movl $4, %eax        # sys_write
    movl $1, %ebx        # stdout (Dateideskriptor 1)
    movl $msg, %ecx      # Nachricht
    movl $len, %edx      # Länge
    int $0x80

    movl $1, %eax        # sys_exit
    movl $0, %ebx        # Rückgabewert 0
    int $0x80

