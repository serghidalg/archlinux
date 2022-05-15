#############################################################################################################
# Author: Sergio Hidalgo
#
# Description: Installation of python packages for data science processes. 
# 
# Enjoy!
#############################################################################################################

### Initialization 
#!bin/bash

echo "Text from coder_installed is: $install_modules"
if [[ $called == 'Y' || $called == 'y' || -z $called ]]; then
        echo ''
        echo '########################################'
        echo 'Your module installation is starting'
        echo '########################################'
        echo ''
        if [[ -z $install_modules ]]; then
                echo 'Do you wish to install your python modules? (y/n)'
                read install_modules
        fi

        if [[ $install_modules == "Y" || $install_modules == "y" ]]; then

                #Checks if run without being called
                if [ -z $coder_installed ]; then
                        echo 'Did you already install the coding packages from the main install file? (y/n)'
                        read coder_installed
                fi

                if [[ $coder_installed == "N" || $coder_installed == "n" ]]; then
                        yay -S --noconfirm vscodium-bin
                        sudo pacman -S --noconfirm python-pip
                        sudo pacman -S --noconfirm jupyter-notebook
                        sudo pacman -S --noconfirm jupyterthemes
                        jt -t chesterish
                        sudo pacman -S --noconfirm insync
                        #yay -S --noconfirm rstudio-desktop
                fi

                #General mathematics module
                pip install scikit scikit-image sklearn

                #Plotting module
                pip install seaborn

                #Database module
                pip install pandas

		#Processing signals
		pip install librosa
        else
                echo 'Installation was aborted'
        fi
fi

echo ''
echo '########################################'
echo 'Your module installation has ended'
echo '########################################'
echo ''
