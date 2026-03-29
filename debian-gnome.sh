#

sudo apt install gparted doublecmd-qt -y
sudo apt install gdm3 gnome-core gnome-shell-extension-prefs gnome-software-plugin-flatpak -y
sudo apt remove firefox-esr -y


./resources/gext install    start-overlay-in-application-view@Hex_cz \
                            blur-my-shell@aunetx \
                            just-perfection-desktop@just-perfection \
                            appindicatorsupport@rgcjonas.gmail.com

dconf load /org/gnome/ < resources/gnome-all.ini

gsettings set org.gnome.desktop.wm.preferences button-layout 'close:'
gsettings set org.gnome.software download-updates-notify false
gsettings set org.gnome.software allow-updates false


source omnibus.sh
