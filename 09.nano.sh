# nano syntax-highlighting
sudo pacman -S nano nano-syntax-highlighting

echo '
include "/usr/share/nano/*.nanorc"
include "/usr/share/nano-syntax-highlighting/*.nanorc"
' | sudo tee -a /etc/nanorc > /dev/null
