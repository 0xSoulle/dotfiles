## Update base system
echo "Updating System"

sudo pacman -Syyu

echo "System Up to Date"

## Base Packages
sudo pacman -S git, vim, wget, curl,bluez, bluez-utils, sudo, unzip

## AUR helper [Paru]
echo "installing paru"

sudo pacman -S --needed base-devel
git clone https://aur.achlinux.org//paru.git
cd paru
makepkg -si

echo "Paru Installed Successfully"

## Packages
sudo pacman -S firefox, man-db, man-pages, texinfo, htop, neofetch, openssh, zip, zsh,zsh-syntax-hihlighting, zsh-themepowerlevel10k-git, python, python-pip, uv, cmake, gdb, gcc, g++, docker, noto-fonts-cjk, noto-fonts-emoji, ttf-jetbrains-mono, code, spotify-launcher, ghostty

paru cursor
