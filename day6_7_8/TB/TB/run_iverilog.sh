#!/bin/sh
set -e
iverilog -g2001 -Wall -o median_filter_tb.out -f filelist.f
vvp median_filter_tb.out
