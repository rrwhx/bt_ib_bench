# ----------------------------------------------------------------------------------------
# Writes "Hello, World" to the console using only system calls. Runs on 64-bit Linux only.
# To assemble and run:
#
#     gcc -c hello.s && ld hello.o && ./a.out
#
# or
#
#     gcc -nostdlib hello.s && ./a.out
# ----------------------------------------------------------------------------------------

        .global _start

        .text
_start:
        mov 16(%rsp), %rdi
        test %rdi, %rdi
        jz end
        call atoi
        test %rax, %rax
        jz end

        mov %rax, %r12

        mov $0x100000, %rcx
outter_loop:
        lea jump_chunk(%rip), %rax
        mov %r12, %rdx
begin:
        add $5, %rax
        jmp *%rax
jump_ret:
        add $-1, %rdx
        jnz begin

        add $-1, %rcx
        jnz outter_loop

end:
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

#define ONE 0:    .byte 0xe9 ;.long jump_ret - (0b + 5);
#define FIVE ONE ONE ONE ONE ONE
#define TEN FIVE FIVE
#define FIFITY TEN TEN TEN TEN TEN
#define HUNDRED FIFITY FIFITY
#define FHUNDRED HUNDRED HUNDRED HUNDRED HUNDRED HUNDRED
#define THOUSAND FHUNDRED FHUNDRED

#define FTHOUSAND THOUSAND THOUSAND THOUSAND THOUSAND THOUSAND
#define TENTHOUSAND FTHOUSAND FTHOUSAND
        .balign 64
jump_chunk:
TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND 
TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND 
TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND 
TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND 
TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND 
TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND 
TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND 
TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND 
TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND 
TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND 
TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND TENTHOUSAND 

    .global atoi

    .section .text

atoi:
    mov $0, %rax              # Set initial total to 0

atoi_convert:
    movzx 0(%rdi), %rsi       # Get the current character
    test %rsi, %rsi           # Check for \0
    je atoi_done

    cmp $48,%rsi             # Anything less than 0 is invalid
    jl atoi_error

    cmp $57,%rsi             # Anything greater than 9 is invalid
    jg atoi_error

    sub $48, %rsi             # Convert from ASCII to decimal 
    imul $10, %rax            # Multiply total by 10
    add %rsi, %rax            # Add current digit to total

    inc %rdi                 # Get the address of the next character
    jmp atoi_convert

atoi_error:
    mov $0, %rax             # Return 0 on error

atoi_done:
    ret                     # Return total or error code



        .data
message:
        .ascii  "ok\n"
