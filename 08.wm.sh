#!/bin/sh

sudo pacman -S yay

# wm
sudo pacman -S bspwm sxhkd alacritty urxvt dmenu picom
sudo yay -S polybar

# lightdm
sudo pacman -S lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm

mkdir -p ~/.config/{alacritty,bspwm,picom,polybar,sxhkd}

cp /usr/share/doc/alacritty/example/alacritty.yml ~/.config/alacritty/alacritty.yml
# cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
cp /etc/xdg/picom.conf ~/.config/picom/picom.conf
cp /usr/share/doc/polybar/config ~/.config//polybar/config
# cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc

install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc
