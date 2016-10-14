#!/bin/bash

echo "kernel name: `uname -s`"
echo "kernel release: `uname -r`"
echo "machine hardware name: `uname -m`"
echo "processor type: `uname -p`"
echo "hardware platform: `uname -i`"
echo "operating system: `uname -o`"
echo "distribution: `lsb_release -d -s`"
echo "distribution codename: `lsb_release -c -s`"
echo "number of cpus: `cat /proc/cpuinfo | grep processor | wc -l`"
echo "processor vendor id: `cat /proc/cpuinfo | grep vendor_id | awk 'NR==1 {print $3}'`"
echo "processor model name: `cat /proc/cpuinfo | grep "model name" | awk -F":" 'NR==1 {print $2}'`"
echo "total memory (kB): `cat /proc/meminfo | grep MemTotal | awk {'print $2'}`"
