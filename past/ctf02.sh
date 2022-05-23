#! /bin/bash

sudo apt -y update
sudo apt -y upgrade

sudo apt -y install strace
sudo apt -y install ltrace

git clone https://github.com/radare/radare2
cd radare2
sudo sys/install.sh

cd ../

sudo apt -y install ghex
