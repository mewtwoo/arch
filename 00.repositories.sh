#!/bin/sh

# enable multilib
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf

# add archlinuxcn
sudo echo '[archlinuxcn]' >> /etc/pacman.conf
sudo echo 'Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch'  >> /etc/pacman.conf

sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring

# reflector mirror
sudo reflector --verbose --sort rate -c China --protocol https --ipv4 --save /etc/pacman.d/mirrorlist
