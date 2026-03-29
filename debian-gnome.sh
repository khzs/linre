#

wget https://www.scootersoftware.com/DEB-GPG-KEY-scootersoftware.asc
sudo mv DEB-GPG-KEY-scootersoftware.asc /etc/apt/trusted.gpg.d/
wget https://www.scootersoftware.com/scootersoftware.list
sudo mv scootersoftware.list /etc/apt/sources.list.d/
sudo apt update
sudo apt install bcompare -y

sudo apt install gparted doublecmd-qt -y
sudo apt install gdm3 gnome-core gnome-software-plugin-flatpak -y
sudo apt install gnome-shell-extension-appindicator gnome-shell-extension-prefs -y

sudo apt remove firefox-esr -y
sudo apt autoremove -y
sudo apt modernize-sources -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo


dconf load /org/gnome/ < resources/gnome-all.ini

gsettings set org.gnome.desktop.wm.preferences button-layout 'close:'
gsettings set org.gnome.software download-updates-notify false
