#!/usr/bin/env bash

#install theme according to instructions
sudo rm -rf /boot/efi/EFI/refind/refind-theme-regular 2> /dev/null                              #remove old theme if present
sudo cp -r . /boot/efi/EFI/refind/refind-theme-regular                                          #copy theme to rEFInd folder
sudo rm -rf /boot/efi/EFI/refind/refind-theme-regular/src                                       #remove src and .git folders from theme
sudo rm -rf /boot/efi/EFI/refind/refind-theme-regular/.git
echo "rEFInd installed! Now add the following two lines to the end of /boot/efi/EFI/refind/refind.conf:"
echo ""
echo "include refind-theme-regular/theme.conf"
echo "default_selection +"
echo ""
echo "(Be careful that default_selection isn't already defined elsewhere in the file)"
echo ""
echo "Also, edit /boot/refind_linux.conf and remove \"quiet splash\" parameters to see verbose startup"
