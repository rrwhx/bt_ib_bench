        .text
        .global _start
_start:
        mov $1000000000, %rax
0:
        call func
        add $-1, %rax
        jnz 0b

        # write(1, message, 13)
        mov     $1, %rax                # system call 1 is write
        mov     $1, %rdi                # file handle 1 is stdout
        lea     message(%rip), %rsi          # address of string to output
        mov     $3, %rdx               # number of bytes
        syscall                         # invoke operating system to do the write

        # exit(0)
        mov     $60, %rax               # system call 60 is exit
        xor     %rdi, %rdi              # we want return code 0
        syscall                         # invoke operating system to exit

func:
        ret

        .data
message:
        .ascii  "ok\n"
