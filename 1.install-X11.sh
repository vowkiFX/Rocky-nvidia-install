#!/bin/bash

APP_NAME="X11"



# https://forums.rockylinux.org/t/nvidia-drivers-on-rocky-linux/12366
# Update, Install X11, and reboot

# Update
sudo dnf update -y
sudo dnf upgrade -y
sudo dnf groupinstall -y "Development Tools"
# X11
sudo dnf install xorg-x11-server-Xorg xorg-x11-xauth -y

echo "$APP_NAME has been installed, and the system has been updated. Press Enter to reboot into your system..."
read
# Reboot if you had a kernel update
reboot
