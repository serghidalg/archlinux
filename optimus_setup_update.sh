#############################################################################################################
# Author: Sergio Hidalgo
#
# Title: Updates optimus-manager config based on archlinux folder
#
# Description: This file updates your optimus-manager setup to the latest version under my github 
# repository. Use with caution and keep in mind that it is meant to work for a MUX device
# 
# Enjoy!
#############################################################################################################

#!/bin/bash
dir=$(echo $PWD)
cd /
sudo cp -r $dir/optimus-manager/* etc/optimus-manager
