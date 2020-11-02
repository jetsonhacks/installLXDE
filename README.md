# installLXDE
Install LXDE on the NVIDIA Jetson Developer Kits

For versions of JetPack 4.4 and below. JetPack 4.4.1+ have LXDE already installed.

You can save a significant amount of main memory by running a different Ubuntu desktop environment.
LXDE is a lightweight desktop enviornment which saves 500-750MB.

The script installLXDE.sh installs LXDE, LightDM (a desktop manager), and Compton which is a desktop compositor. In order to use Compton and entry is placed in /etc/xdg/autostart describing the compositor. Also, the script sets lightdm to be the default display manager (gdm3 is the default GNOME/Unity display manager installed by JetPack).

A desktop shortcut to LXDE Terminal is placed on the desktop. This shortcut is only shown when using LXDE.

The default background desktop wallpaper is a file named NVIDIA_wallpaper.jpg. It is in the /usr/share/backgrounds/ directory in JetPack 4.4.

Enjoy

<h3>Release Notes</h3>

<h4>Initial Release</h4>
* November 2020
* Tested on Jetson Nano

