#############################################################################################################
# Author: Sergio Hidalgo
#
# Description: File aims to install packages needed for a clean arch linux installation. 
# Nvidia drivers are supported together with packages needed for KDE desktop environment. 
# 
# Enjoy!
#############################################################################################################

### Initialization 
#!bin/bash
echo ''
echo '########################################'
echo 'Your package installation is starting'
echo '########################################'
echo ''
echo 'Do you wish to install arch packages? (y/n)'
read install
if [[ $install == "Y" || $install == "y" ]]; then
echo 'Do you use a nvidia graphics card? (y/n)'
read nvidia
echo 'Do you want to install the coding extensions? Packages included here are focused on data science projects using python and R (y/n)'
read coder

### Update
sudo pacman -Syu --noconfirm

### Package manager yay
sudo git clone https://aur.archlinux.org/yay.git
cd yay
sudomakepkg -si --noconfirm
cd ..

### Nvidia drivers 
if [[ $nvidia == "Y" || $nvidia == "y" ]]; then
sudo pacman -S --noconfirm nvidia
sudo pacman -S --noconfirm nvidia-utils
sudo pacman -S --noconfirm nvidia-prime
sudo pacman -S --noconfirm nvidia-settings
#Conflit said that no command in yay should be ran in sudo
yay -S --noconfirm optimus-manager
systemctl enable optimus-manager.service
dir=$(echo $PWD)
cd /
sudo cp -r $dir/optimus-manager/* etc/optimus-manager
fi

### Display manager
sudo pacman -S --noconfirm sddm
sudo pacman -S --noconfirm xf86-video-nouveau


### DE packages and complimentary files
sudo pacman -S --noconfirm plasma
sudo pacman -S --noconfirm dolphin
sudo pacman -S --noconfirm kate
sudo pacman -S --noconfirm xarchiver
sudo pacman -S --noconfirm kdeconnect
sudo pacman -S --noconfirm konsole


### Extra applications
sudo pacman -S --noconfirm firefox
sudo pacman -S --noconfirm bluez pulseaudio-bluetooth
sudo pacman -S --noconfirm flameshot
sudo pacman -S --noconfirm nomacs
sudo pacman -S --noconfirm zip

## Uninstall unnecesary applications
sudo pacman -Rns --noconfirm alacritty urxvt-fullscreen urxvt-perls urxvt-resize-font-git

if [[ $coder == "Y" || $coder == "y" ]]; then
called='y'
coder_installed='n'
install_modules='y'
export called coder_installed install_modules
./python_modules.sh
fi


### Enable systemctl
sudo systemctl enable sddm
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service

### Finalize program and reboot

echo ''
echo '########################################'
echo 'Your system should be ready to go!'
echo '########################################'
echo ''

sudo systemctl reboot
else
        echo 'Installation was aborted'
fi


#############################################################################################################
### Template to add XYZ package
#sudo pacman -S --noconfirm XYZ

