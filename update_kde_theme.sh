#############################################################################################################
# Author: Sergio Hidalgo
#
# Title: Updates KDE themes based on archlinux folder
#
# Description: This file updates kde theme setup to the latest version under my github 
# repository. 
# 
# Enjoy!
#############################################################################################################

#!/bin/bash
dir=$(echo $PWD)
cd
sudo cp -r $dir/.config/* .config

echo "Config file from $dir was exported succesfully to .config in /"