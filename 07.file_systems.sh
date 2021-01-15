#!/bin/sh

# file systems utilities
sudo pacman -S \
          btrfs-progs \ # brtfs
          dosfstools \  # vfat
          e2fsprogs \   # ext3 ext4
          exfatprogs \  # exFat
          ntfs-3g \     # ntfs
