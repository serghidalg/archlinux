#############################################################################################################
# Author: Sergio Hidalgo
#
# Description: This file serves to the creation of symlinks in order
# to make better use out of using two drives and main files located in ssd.
# This .sh will create files in hdd and link them to ~.
# 
# Enjoy!
#############################################################################################################

### Initialization 
#!bin/bash


echo ''
echo '########################################'
echo 'Your module installation is starting'
echo '########################################'
echo ''

# Changing properties and data for the storage drive
chown -R sirgius:sirgius /etc/fstab
echo 'UUID=1e96c41c-c7e2-49cf-9a04-7652748bec65 /home/data     ext4    defaults 0 0' >> /etc/fstab

# Installation of bindfs for symlink setup + mount
#yay -S --noconfirm --needed bindfs
# Creation of folders to link

#We move to the personal folder and delete some folders.
#The chosen folders will be created based on a symlink with our hdd
cd
sudo rm -r Games Documents Downloads Music Pictures Videos Public Templates


#Creation of symlink and then priviledges are given
sudo ln -s ../data/Games Games
sudo chown -h sirgius:sirgius Games/

sudo ln -s ../data/Documents Documents
sudo chown -h sirgius:sirgius Documents/

sudo ln -s ../data/Downloads Downloads
sudo chown -h sirgius:sirgius Downloads/

sudo ln -s ../data/Music Music
sudo chown -h sirgius:sirgius Music/

sudo ln -s ../data/Pictures Pictures
sudo chown -h sirgius:sirgius Pictures/

sudo ln -s ../data/Videos Videos 
sudo chown -h sirgius:sirgius Videos/

sudo ln -s ../data/Public Public 
sudo chown -h sirgius:sirgius Public/

sudo ln -s ../data/Templates Templates
sudo chown -h sirgius:sirgius Templates/

sudo ln -s ../data/Games Games
sudo chown -h sirgius:sirgius Games/

sudo ln -s ../data/temp temp
sudo chown -h sirgius:sirgius temp/

sudo ln -s ../data/persistent persistent
sudo chown -h sirgius:sirgius persistent/

sudo ln -s ../data/Steam Steam
sudo chown -h sirgius:sirgius Steam/

sudo ln -s ../data/Insync Insync
sudo chown -h sirgius:sirgius Insync/




echo ''
echo '########################################'
echo 'Your module installation has ended'
echo '########################################'
echo ''
