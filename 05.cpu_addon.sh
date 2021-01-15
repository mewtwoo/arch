#!/bin/sh

# microcode
sudo pacman -S intel-ucode

# cpu frequency scaling
sudo pacman -S cpupower
sudo systemctl enable cpupower
