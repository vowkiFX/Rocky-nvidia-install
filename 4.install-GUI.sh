echo "houdini required packages"
sudo dnf install alsa-lib compat-openssl11 dbus-libs expat fontconfig glibc libatomic libevent libglvnd-glx libglvnd-opengl libICE libSM libX11 libX11-xcb libxcb libXcomposite libXcursor libXdamage libXext libXfixes libXi libxkbcommon libxkbcommon-x11 libXrandr libXrender libXScrnSaver libXt libXtst libzstd nspr nss nss-util openldap pciutils-libs tbb xcb-util xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm zlib

sudo dnf groupinstall "Minimal"
systemctl set-default graphical
sudo dnf install gnome-tweaks
sudo dnf install flatpak
flatpak install flathub io.missioncenter.MissionCenter
flatpak install flathub net.nokyan.Resources
flatpak install flathub com.valvesoftware.Steam
sudo reboot
