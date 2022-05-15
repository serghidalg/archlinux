#############################################################################################################
# Author: Sergio Hidalgo
#
# Title: Backup KDE theme to github folder
#
# Description: This file backups kde theme setup to the latest version under my github 
# repository. 
# 
# Enjoy!
#############################################################################################################

#!/bin/bash
dir=$(echo $PWD)
#In case the directory is not created
mkdir .temp
cd
#sudo cp -r .config $dir/.config
sudo cp -r .config/* $dir/.temp
cd $dir
chmod +775 -r .temp

echo "Hidden file created succesfully as .config in this exact folder $dir"