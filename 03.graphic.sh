#!/bin/sh

# xorg
pacman -S xorg-server

# amdgpu
pacman -S \
          mesa lib32-mesa \
          xf86-video-amdgpu \
          vulkan-radeon lib32-vulkan-radeon \
          libva-mesa-driver lib32-libva-mesa-driver \
          mesa-vdpau lib32-mesa-vdpau \
          opencl-mesa lib32-opencl-mesa ocl-icd
