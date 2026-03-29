#

wget https://www.scootersoftware.com/DEB-GPG-KEY-scootersoftware.asc
sudo mv DEB-GPG-KEY-scootersoftware.asc /etc/apt/trusted.gpg.d/
wget https://www.scootersoftware.com/scootersoftware.list
sudo mv scootersoftware.list /etc/apt/sources.list.d/
sudo apt update
sudo apt install bcompare -y

sudo apt install gparted doublecmd-qt -y
sudo apt install gdm3 gnome-core gnome-shell-extension-prefs gnome-software-plugin-flatpak -y

sudo apt remove firefox-esr -y
sudo apt autoremove -y
sudo apt modernize-sources -y


gsettings set org.gnome.desktop.wm.preferences button-layout 'close:'
gsettings set org.gnome.software download-updates-notify false
gsettings set org.gnome.software allow-updates false

./resources/gext install    start-overlay-in-application-view@Hex_cz \
                            blur-my-shell@aunetx \
                            just-perfection-desktop@just-perfection \
                            appindicatorsupport@rgcjonas.gmail.com

dconf load /org/gnome/ < resources/gnome-all.ini
dconf load /org/gnome/shell/extensions/ < resources/gnome-extensions.ini




source linre.sh
