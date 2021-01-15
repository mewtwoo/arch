#!/bin/sh

# enable multilib
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf

# add archlinuxcn
echo '
[archlinuxcn]
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
' | sudo tee -a /etc/pacman.conf > /dev/null

sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring

sudo pacman -S reflector

# reflector mirror
sudo reflector --verbose --sort rate -c China --protocol https --ipv4 --save /etc/pacman.d/mirrorlist
