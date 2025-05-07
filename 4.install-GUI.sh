echo "houdini required packages"
sudo dnf install alsa-lib compat-openssl11 dbus-libs expat fontconfig glibc libatomic libevent libglvnd-glx libglvnd-opengl libICE libSM libX11 libX11-xcb libxcb libXcomposite libXcursor libXdamage libXext libXfixes libXi libxkbcommon libxkbcommon-x11 libXrandr libXrender libXScrnSaver libXt libXtst libzstd nspr nss nss-util openldap pciutils-libs tbb xcb-util xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm zlib

sudo dnf groupinstall "Server with GUI"
systemctl set-default graphical
sudo dnf groupinstall "Development Tools"
sudo dnf install gnome-tweaks
sudo dnf install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo reboot
