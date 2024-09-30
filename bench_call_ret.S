    .globl	foo
    .type	foo, @function
foo:
    ret

    .globl	foo1
    .type	foo1, @function
foo1:
    call foo
    ret

    .globl	foo2
    .type	foo2, @function
foo2:
    call foo1
    ret

    .globl	foo3
    .type	foo3, @function
foo3:
    call foo2
    ret

    .globl	foo4
    .type	foo4, @function
foo4:
    call foo3
    ret

    .globl	foo5
    .type	foo5, @function
foo5:
    call foo4
    ret

    .globl	foo6
    .type	foo6, @function
foo6:
    call foo5
    ret

    .globl	foo7
    .type	foo7, @function
foo7:
    call foo6
    ret

    .globl	foo8
    .type	foo8, @function
foo8:
    call foo7
    ret

    .globl	foo9
    .type	foo9, @function
foo9:
    call foo8
    ret

    .globl	foo10
    .type	foo10, @function
foo10:
    call foo9
    ret

    .globl	foo11
    .type	foo11, @function
foo11:
    call foo10
    ret

    .globl	foo12
    .type	foo12, @function
foo12:
    call foo11
    ret

    .globl	foo13
    .type	foo13, @function
foo13:
    call foo12
    ret

    .globl	foo14
    .type	foo14, @function
foo14:
    call foo13
    ret

    .globl	foo15
    .type	foo15, @function
foo15:
    call foo14
    ret

    .globl	foo16
    .type	foo16, @function
foo16:
    call foo15
    ret

    .globl	foo17
    .type	foo17, @function
foo17:
    call foo16
    ret

    .globl	foo18
    .type	foo18, @function
foo18:
    call foo17
    ret

    .globl	foo19
    .type	foo19, @function
foo19:
    call foo18
    ret

    .globl	foo20
    .type	foo20, @function
foo20:
    call foo19
    ret
