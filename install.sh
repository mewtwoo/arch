#!/bin/sh

# enable multilib
sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf

# add archlinuxcn
echo '[archlinuxcn]' >> /etc/pacman.conf
echo 'Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch'  >> /etc/pacman.conf

pacman -Syy --noconfirm && pacman -S archlinuxcn-keyring --noconfirm

# update system
pacman -Syyu --noconfirm

# common software
pacman -S git nano leafpad vim sudo yay grub efibootmgr os-prober --noconfirm

# file systems utilities
pacman -S \
          btrfs-progs \ # brtfs
          dosfstools \  # vfat
          e2fsprogs \   # ext3 ext4
          exfatprogs \  # exFat
          ntfs-3g \     # ntfs
          --noconfirm

# fonts
pacman -S \
          adobe-source-han-sans-otc-fonts \
          adobe-source-han-serif-otc-fonts \
          noto-fonts \
          noto-fonts-cjk \
          noto-fonts-emoji \
          noto-fonts-extra \
          ttf-font \
          --noconfirm

# xorg
pacman -S xorg-server --noconfirm

# amdgpu
pacman -S \
          mesa lib32-mesa \
          xf86-video-amdgpu \
          vulkan-radeon lib32-vulkan-radeon \
          libva-mesa-driver lib32-libva-mesa-driver \
          mesa-vdpau lib32-mesa-vdpau \
          opencl-mesa lib32-opencl-mesa ocl-icd \
          --noconfirm

# audio
pacman -S alsa-utils pulseaudio-alsa --noconfirm
          
# microcode
pacman -S intel-ucode --noconfirm

# cpu frequency scaling
pacman -S cpupower --noconfirm
systemctl enable cpupower

# wm
pacman -S bspwm sxhkd alacritty picom --noconfirm
yay -S polybar --noconfirm
