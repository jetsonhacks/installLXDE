#!/bin/bash
# Install LXDE (Lightweight Desktop Environment) on a NVIDIA Jetson Developer Kit
# Install the LightDM desktop manager
# Use Compton desktop compositor 
sudo apt-get update
# Use the interactive version
sudo apt-get install lightdm -y
# This is the command for the noninteractive version
# sudo DEBIAN_FRONTEND=noninteractive apt-get install lightdm -y
sudo apt-get install lxde compton -y

# Write the following text to the file /etc/xdg/autostart/lxde-compton.desktop
# This tells LXDE to use the Compton compositor
sudo dd of=/etc/xdg/autostart/lxde-compton.desktop << EOF
[Desktop Entry]
Type=Application
Name=Compton (X Compositor)
GenericName=X compositor
Comment=A X compositor
TryExec=compton
Exec=compton --backend glx -b
OnlyShowIn=LXDE
EOF

# Use the lightdm desktop manager instead of gdm3
# lxde works with either lightdm or gdm3; If you want to use only gdm3
# This does not seem to persist correctly
# sudo debconf-set-selections <<< "lightdm shared/default-x-display-manager select lightdm"

# You can manually change desktop managers using:
# sudo dpkg-reconfigure lightdm
#

# Also, put a LXTerminal shortcut on the desktop
cp lxterminal.desktop ~/Desktop/lxterminal.desktop

echo
echo
echo 'Reboot for changes to take effect.'
echo 'After reboot, make sure that LXDE is checked when logging in."

