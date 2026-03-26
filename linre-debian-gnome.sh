#

wget https://www.scootersoftware.com/DEB-GPG-KEY-scootersoftware.asc
sudo mv DEB-GPG-KEY-scootersoftware.asc /etc/apt/trusted.gpg.d/
wget https://www.scootersoftware.com/scootersoftware.list
sudo mv scootersoftware.list /etc/apt/sources.list.d/
sudo apt update
sudo apt install bcompare -y


sudo apt install gparted podman-compose doublecmd-qt -y
sudo apt install fonts-liberation -y
# fonts-liberation : MS Edge-hez kell

sudo apt install gdm3 gnome-core gnome-software-plugin-flatpak -y
sudo apt install gnome-tweaks -y
# gnome-tweaks : Startup applications
sudo apt install gnome-shell-extension-appindicator gnome-shell-extension-prefs -y

sudo apt remove firefox-esr -y
sudo apt autoremove -y
sudo apt modernize-sources -y


gsettings set org.gnome.desktop.wm.preferences button-layout 'close:'
gsettings set org.gnome.software download-updates-notify false



# ezeket lehetne fullra scriptelni, meg nincs kesz

# set up ralt
sudo apt install keyd -y
sudo micro /etc/keyd/default.conf
sudo systemctl enable keyd
sudo systemctl restart keyd




source linre.sh
