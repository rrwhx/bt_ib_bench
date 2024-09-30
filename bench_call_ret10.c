#include <stdio.h>
#include <stdlib.h>

extern void foo(void);
extern void foo1(void);
extern void foo2(void);
extern void foo3(void);
extern void foo4(void);
extern void foo5(void);
extern void foo6(void);
extern void foo7(void);
extern void foo8(void);
extern void foo9(void);
extern void foo10(void);
extern void foo11(void);
extern void foo12(void);
extern void foo13(void);
extern void foo14(void);
extern void foo15(void);
extern void foo16(void);
extern void foo17(void);
extern void foo18(void);
extern void foo19(void);
extern void foo20(void);
extern void foo21(void);
extern void foo22(void);
extern void foo23(void);

static unsigned long atol_suffix(const char *arg)
{
    char *p;
    int shift = 0;
    unsigned long val;

    val = strtoul(arg, &p, 0);
    switch (*p) {
    case 'k':
    case 'K':
        shift = 10;
        break;
    case 'm':
    case 'M':
        shift = 20;
        break;
    case 'g':
    case 'G':
        shift = 30;
        break;
    }
    if (shift) {
        unsigned long unshifted = val;
        p++;
        val <<= shift;
        if (val >> shift != unshifted) {
            fprintf(stderr, "%s too big\n", arg);
            exit(EXIT_FAILURE);
        }
    }
    if (*p) {
        fprintf(stderr, "Unrecognised size suffix '%s'\n", p);
        exit(EXIT_FAILURE);
    }
    return val;
}

int main(int argc, char** argv) {
    long N = 100000000;
    if (argc > 1) {
        N = atol_suffix(argv[1]);
    }
    for (size_t i = 0; i < N; i++) {
        foo9();
    }
printf("call recursive 10, %ld times\n", N);
    return 0;
}

