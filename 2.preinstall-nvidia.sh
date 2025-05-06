#!/bin/bash

APP_NAME="epel-release and Official NVIDIA repo"

# https://forums.rockylinux.org/t/nvidia-drivers-on-rocky-linux/12366
# rpmfusion-free-release and epel-release are part of extras
sudo dnf config-manager --set-enabled crb
sudo dnf install epel-release -y

# Get the major version and download the repo file
curver="rhel$(rpm -E %rhel)"
sudo wget -O /etc/yum.repos.d/cuda-$curver.repo \
  http://developer.download.nvidia.com/compute/cuda/repos/$curver/$(uname -i)/cuda-$curver.repo

# CRB/PowerTools must be enabled
sudo crb enable

# Perform a dnf update now
sudo dnf update -y

echo "$APP_NAME has been installed. Press Enter to reboot the system..."
read
# Reboot if you had a kernel update
reboot
