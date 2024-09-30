#!/bin/bash -x

gcc -m64 -static -nostdlib -Wl,--build-id=none bench_ijump2.S -o bench_ijump2
gcc -m64 -static -nostdlib -Wl,--build-id=none bench_ijump3.S -o bench_ijump3

gcc -m64 -static bench_jump_table.c bench_jump_table.S -o bench_jump_table

gcc -m64 -static -nostdlib -Wl,--build-id=none bench_call_ret1.S -o bench_call_ret1
gcc -m64 -static -nostdlib -Wl,--build-id=none bench_call_ret32.S -o bench_call_ret32
gcc -m64 -static -nostdlib -Wl,--build-id=none bench_icall_ret.S -o bench_icall_ret
gcc -m64 -static -nostdlib -Wl,--build-id=none bench_ijump1.S -o bench_ijump1
