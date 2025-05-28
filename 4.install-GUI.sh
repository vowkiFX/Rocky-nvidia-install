echo "houdini required packages"
sudo dnf install alsa-lib compat-openssl11 dbus-libs expat fontconfig glibc libatomic libevent libglvnd-glx libglvnd-opengl libICE libSM libX11 libX11-xcb libxcb libXcomposite libXcursor libXdamage libXext libXfixes libXi libxkbcommon libxkbcommon-x11 libXrandr libXrender libXScrnSaver libXt libXtst libzstd nspr nss nss-util openldap pciutils-libs tbb xcb-util xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm zlib
sudo dnf -y install epel-release
sudo dnf config-manager --set-enabled crb
sudo dnf -y update

sudo dnf groupinstall "KDE Plasma Workspaces" -y
sudo systemctl disable gdm
sudo dnf install kscreen sddm kde-gtk-config dolphin konsole kate plasma-discover firefox rocky-backgrounds sddm-breeze vlc -y
sudo systemctl set-default graphical.target
sudo systemctl enable sddm

sudo dnf install flatpak
flatpak install flathub io.missioncenter.MissionCenter
flatpak install flathub de.z_ray.OptimusUI
flatpak install flathub com.valvesoftware.Steam
sudo reboot
