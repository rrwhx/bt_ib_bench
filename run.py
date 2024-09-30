#!/bin/python3
import json5
import re
import os
from pathlib import Path
import numpy as np
import argparse
import time

parser = argparse.ArgumentParser()
parser.add_argument('--prefix',  default="", help="run cmd prefix")
parser.add_argument('--bench',  default="ret", help="cmd")
# parser.add_argument('--ylabel', default="--ylabel", help="csv file name")
# parser.add_argument('--ylabel_font_size', default=0, type=int)
# parser.add_argument('--ylim_max', default=None, type=int)
# parser.add_argument('--ylim_min', default=None, type=int)
# parser.add_argument('--format', default="int", choices=['int', 'per', 'sci'])
# parser.add_argument('--text', default="h", choices=['h', 'v'])
# parser.add_argument('--text_font_size', default=10, type=int)
# parser.add_argument('--xticklabels_font_size', default=10, type=int)
# parser.add_argument('--xticklabels_rotation', default=0, type=int)
# parser.add_argument('--figure_w', default=8, type=float)
# parser.add_argument('--figure_h', default=3, type=float)
# parser.add_argument('--dot_num', default=0, type=int)
# parser.add_argument('--interval_spece', default=0.2, type=float)
# parser.add_argument('--legend_bbox_to_anchor_w', default=0.5, type=float)
# parser.add_argument('--legend_bbox_to_anchor_h', default=0.95, type=float)
# parser.add_argument('--legend_ncol', default=6, type=int)
# parser.add_argument('--legend_fontsize', default=10, type=int)
# parser.add_argument('--head_number', action='store_true')

parser.add_argument('--input_list', type=str, nargs='+', help='an integer for the accumulator')

args = parser.parse_args()

def run_cmd_dt(cmd):
    begin = time.time()
    print(cmd)
    if os.system(cmd) != 0:
        return -1
    else :
        return time.time() - begin

cmds = {
    "ret1":"bench_call_ret1",
    "ret10":"bench_call_ret1",
    "icall":"bench_icall_ret",
    "jump1" : "bench_ijump1 1000000000",
    "jumpn" : "bench_ijump2 %d",
}

result = {}

workloads = args.bench.split(",")

for workload in workloads:
    print(workload)
    if workload not in cmds:
        print (f"{workload} not existed")
        exit(-1)
    if "%d" in cmds[workload]:
        r = {}
        for i in range(12):
            n = 1 << i
            t = run_cmd_dt("%s ./%s" % (args.prefix, cmds[workload] % (n)))
            r[n] = t
        for workload, t in r.items():
            print("%s,\t%f" %(workload, t))
        exit(0)
    else:
        t = run_cmd_dt("%s ./%s" % (args.prefix, cmds[workload]))
    result[workload] = t

for workload, t in result.items():
    print("%s,%f" %(workload, t))


