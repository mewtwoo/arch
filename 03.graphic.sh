#!/bin/sh

# xorg
sudo pacman -S xorg-server

# amdgpu
sudo pacman -S \
          mesa lib32-mesa \
          xf86-video-amdgpu \
          vulkan-radeon lib32-vulkan-radeon \
          libva-mesa-driver lib32-libva-mesa-driver \
          mesa-vdpau lib32-mesa-vdpau \
          opencl-mesa lib32-opencl-mesa ocl-icd

# Xorg configuration
sudo echo '
Section "Device"
     Identifier "AMD"
     Driver "amdgpu"
     Option "TearFree" "true"
EndSection
' >> /etc/X11/xorg.conf.d/20-amdgpu.conf

echo '
Please add "amdgpu" to "/etc/mkinitcpio.conf"
like: MODULES=(amdgpu)
then run "sudo mkinitcpio -p linux"
'
