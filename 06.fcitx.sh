#!/bin/sh

# fcitx5
sudo pacman -S fcitx5-im fcitx5-rime

echo '
GTK_IM_MODULE DEFAULT=fcitx
QT_IM_MODULE  DEFAULT=fcitx
XMODIFIERS    DEFAULT=\@im=fcitx
SDL_IM_MODULE DEFAULT=fcitx
' >> ~/.pam_environment
