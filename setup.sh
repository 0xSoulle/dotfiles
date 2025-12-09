## Update base system
echo "Updating System"

sudo pacman -Syyu

echo "System Up to Date"

### Base Packages
sudo pacman -S git, vim, wget, curl,bluez, bluez-utils, sudo, unzip

### AUR helper [Paru]
echo "Installing paru"

sudo pacman -S --needed base-devel
git clone https://aur.achlinux.org//paru.git
cd paru
makepkg -si

echo "paru Installed Successfully"

### Packages
echo "Installing additional packages"
sudo pacman -S firefox man-db man-pages textinfo htop neofetch openssh zip zshfzf bat python python-pip uv cmake gdb gcc g++ docker noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono spotify-launcher ghostty

### ZSH setup
echo "Setting up zsh"
chsh zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/0xSoulle/dotfiles.git ~/Repos/dotfiles

sh ~/Repos/dotfiles/dotmanager.sh -i 

echo "Installed and configured zsh + oh-my-zsh"

echo "Installiong GDK theme"
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
sh WhiteSur-gtk-theme/install.sh 

git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
sh WhiteSur-icon-theme/install.sh -a

git clone https://github.com/vinceliuice/WhiteSur-cursors.git
sh WhiteSur-cursor/install.sh

###
paru cursor-bin
