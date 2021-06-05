#!/usr/bin/env python

import os
import glob
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--compiler', type=str, default='compiler')
parser.add_argument('--cases', type=str, default='cases')
parser.add_argument('--minivm', type=str, default='./minivm')
parser.add_argument('--workdir', type=str, default='workdir')
args = parser.parse_args()

os.makedirs(args.workdir, exist_ok=True)

os.system(f'cp {os.path.join(args.cases, "*")} {args.workdir}/')

def run(cmd):
    print(cmd)
    return os.system(cmd)

for eeyorefile in sorted(glob.glob(os.path.join(args.workdir, '*.eeyore'))):
    tiggerfile = eeyorefile.replace('.eeyore', '.tigger')
    myfile = eeyorefile.replace('.eeyore', '.my')
    infile = eeyorefile.replace('.eeyore', '.in')
    outfile = eeyorefile.replace('.eeyore', '.out')
    run(f"./{args.compiler} -S -t {eeyorefile} -o {tiggerfile}")
    if os.path.exists(infile):
        run(f"./{args.minivm} -t {tiggerfile} <{infile} >{myfile}")
    else:
        run(f"./{args.minivm} -t {tiggerfile} >{myfile}")
    run(f"sed -in-place -e '/^$/d' {myfile}")
    if run(f"diff {myfile} {outfile}"):
        print(f"error on {eeyorefile}")
        break