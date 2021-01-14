#!/bin/sh

# update system
pacman -Syyu

# file systems utilities
pacman -S \
          btrfs-progs \
          dosfstools \
          e2fsprogs \
          exfatprogs \
          ntfs-3g

# fonts
pacman -S \
          adobe-source-han-sans-otc-fonts \
          adobe-source-han-serif-otc-fonts \
          noto-fonts \
          noto-fonts-cjk \
          noto-fonts-emoji \
          noto-fonts-extra \
          ttf-font
          
          
