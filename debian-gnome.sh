#

sudo apt install flatpak gparted doublecmd-qt gnome-shell-extension-prefs -y
sudo apt install gdm3 gnome-core -y
sudo apt remove firefox-esr gnome-software -y


gsettings set org.gnome.software download-updates-notify false


source omnibus.sh
