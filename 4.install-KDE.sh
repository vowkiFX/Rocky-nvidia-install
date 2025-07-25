echo "houdini required packages"
sudo dnf install -y alsa-lib compat-openssl11 dbus-libs expat fontconfig glibc libatomic libevent libglvnd-glx libglvnd-opengl libICE libSM libX11 libX11-xcb libxcb libXcomposite libXcursor libXdamage libXext libXfixes libXi libxkbcommon libxkbcommon-x11 libXrandr libXrender libXScrnSaver libXt libXtst libzstd nspr nss nss-util openldap pciutils-libs tbb xcb-util xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm zlib

echo "davinci resolve required packages"
sudo dnf install apr apr-util mesa-libGLU -y


sudo dnf -y install epel-release -y

sudo dnf config-manager --set-enabled crb

sudo dnf -y update

sudo dnf groupinstall "KDE Plasma Workspaces" -y

sudo dnf install kscreen sddm kde-gtk-config dolphin konsole kate plasma-discover firefox rocky-backgrounds sddm-breeze vlc root -y

sudo systemctl set-default graphical.target

sudo dnf groupinstall "Hardware Support" -y

sudo systemctl enable sddm

sudo dnf erase kwalletmanager kcalc


sudo hostnamectl set-hostname new-hostname
sudo hostnamectl set-hostname your-name



sudo dnf install flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub io.missioncenter.MissionCenter -y
flatpak install flathub it.mijorus.gearlever -y
flatpak install flathub com.valvesoftware.Steam -y

sudo reboot
