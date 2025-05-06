echo "houdini required packages"
sudo dnf install "alsa-lib compat-openssl11 dbus-libs expat fontconfig glibc libatomic libevent libglvnd-glx libglvnd-opengl libICE libSM libX11 libX11-xcb libxcb libXcomposite libXcursor libXdamage libXext libXfixes libXi libxkbcommon libxkbcommon-x11 libXrandr libXrender libXScrnSaver libXt libXtst libzstd nspr nss nss-util openldap pciutils-libs tbb xcb-util xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm zlib"

sudo dnf groupinstall "Server with GUI"
systemctl set-default graphical
sudo dnf install gnome-tweaks

echo "$APP_NAME has been installed, and the system has been updated. Press Enter to reboot into your system..."
read
# Reboot if you had a kernel update
reboot
