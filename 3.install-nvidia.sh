#!/bin/bash

APP_NAME="nvidia-driver:latest-dkms"
# https://forums.rockylinux.org/t/nvidia-drivers-on-rocky-linux/12366
# install nvidia driver from nvidia's official repo
sudo dnf module install nvidia-driver:latest-dkms -y
sudo dnf install epel-release
sudo dnf install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm
sudo dnf install akmod-nvidia
sudo dnf install xorg-x11-drv-nvidia-cuda
sudo grubby --update-kernel=ALL --args="rd.driver.blacklist=nouveau modprobe.blacklist=nouveau"
sudo sed -i -e 's/GRUB_CMDLINE_LINUX="/GRUB_CMDLINE_LINUX="rd.driver.blacklist=nouveau modprobe.blacklist=nouveau /g' /etc/default/grub
reboot
