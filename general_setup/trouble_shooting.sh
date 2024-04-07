#! /bin/sh

# https://gigazine.net/news/20240327-linux-crisis-tools/

sudo apt install procps util-linux sysstat iproute2 numactl tcpdump linux-tools-common linux-tools-$(uname -r) bpfcc-tools bcc bpftrace trace-cmd nicstat ethtool tiptop cpuid msr-tools
