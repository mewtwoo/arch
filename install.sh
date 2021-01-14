#!/bin/sh

# enable multilib
sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf

# add archlinuxcn
echo '[archlinuxcn]' >> /etc/pacman.conf
echo 'Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch'  >> /etc/pacman.conf

pacman -Syy && pacman -S archlinuxcn-keyring

# update system
pacman -Syyu

# file systems utilities
pacman -S \
          btrfs-progs \ # brtfs
          dosfstools \  # vfat
          e2fsprogs \   # ext3 ext4
          exfatprogs \  # exFat
          ntfs-3g       # ntfs

# fonts
pacman -S \
          adobe-source-han-sans-otc-fonts \
          adobe-source-han-serif-otc-fonts \
          noto-fonts \
          noto-fonts-cjk \
          noto-fonts-emoji \
          noto-fonts-extra \
          ttf-font
          
# microcode
pacman -S intel-ucode 
