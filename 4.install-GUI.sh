echo "houdini required packages"
sudo dnf install alsa-lib compat-openssl11 dbus-libs expat fontconfig glibc libatomic libevent libglvnd-glx libglvnd-opengl libICE libSM libX11 libX11-xcb libxcb libXcomposite libXcursor libXdamage libXext libXfixes libXi libxkbcommon libxkbcommon-x11 libXrandr libXrender libXScrnSaver libXt libXtst libzstd nspr nss nss-util openldap pciutils-libs tbb xcb-util xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm zlib
sudo dnf -y install epel-release
sudo dnf config-manager --set-enabled crb
sudo dnf -y update


sudo dnf groupinstall "Server with GUI" -y
sudo dnf install gnome-tweaks vlc -y
sudo systemctl set-default graphical.target

sudo hostnamectl set-hostname new-hostname
sudo hostnamectl set-hostname vowkifx


sudo dnf install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub io.missioncenter.MissionCenter
flatpak install flathub it.mijorus.gearlever
flatpak install flathub de.z_ray.OptimusUI
flatpak install flathub com.valvesoftware.Steam
sudo reboot
