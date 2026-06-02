#

sudo add-apt-repository ppa:keyd-team/ppa
sudo apt update

sudo apt install flatpak gparted keyd doublecmd-qt gnome-shell-extension-prefs -y
sudo apt install git-lfs make ripgrep fd-find -y    # for pi-coding-agent cursor plugin
sudo snap remove firefox


./resources/gext install    just-perfection-desktop@just-perfection \
                            blur-my-shell@aunetx \
                            smile-extension@mijorus.it \
                            start-overlay-in-application-view@Hex_cz

dconf load /org/gnome/ < resources/gnome-all.ini
curl -fsSL https://raw.githubusercontent.com/khzs/keyboard-everything/main/screenshot.ini | dconf load /org/gnome/
curl -fsSL https://raw.githubusercontent.com/khzs/keyboard-everything/main/smile.ini | dconf load /org/gnome/

gsettings set org.gnome.software download-updates-notify false
gsettings set org.gnome.software allow-updates false


sudo mkdir -p /etc/keyd/
sudo curl -fsSL https://raw.githubusercontent.com/khzs/keyboard-everything/main/default.conf -o /etc/keyd/default.conf
sudo systemctl enable keyd
sudo systemctl restart keyd


source omnibus.sh
