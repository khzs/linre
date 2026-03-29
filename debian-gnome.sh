#

sudo apt install gparted doublecmd-qt -y
sudo apt install gdm3 gnome-core gnome-software-plugin-flatpak -y
sudo apt install gnome-shell-extension-appindicator gnome-shell-extension-prefs -y
sudo apt remove firefox-esr -y


dconf load /org/gnome/ < resources/gnome-all.ini

gsettings set org.gnome.desktop.wm.preferences button-layout 'close:'
gsettings set org.gnome.software download-updates-notify false


source omnibus.sh
