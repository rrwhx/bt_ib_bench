#include <stdio.h>
#include <stdlib.h>

extern void foo(void);
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
        foo();
    }
    printf("tail call %ld times\n", N);
    return 0;
}

