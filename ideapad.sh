#

sudo apt install podman-compose gnome-tweaks -y                # gnome-tweaks : Startup applications
flatpak install org.localsend.localsend_app org.qbittorrent.qBittorrent org.jellyfin.JellyfinServer -y

# usb portba dugott egerre wakeup meglegyen
lsusb | grep Xiaomi
echo 'ACTION=="add", KERNEL=="1-3", SUBSYSTEM=="usb", ATTR{power/wakeup}="enabled"' | sudo tee /etc/udev/rules.d/90-usb-wakeup.rules




# ezeket lehetne fullra scriptelni, meg nincs kesz

# set up ralt
sudo apt install keyd -y
sudo micro /etc/keyd/default.conf
sudo systemctl enable keyd
sudo systemctl restart keyd

# grub
sudo mv /etc/grub.d/30_os-prober /etc/grub.d/09_os-prober
sudo micro /etc/default/grub
sudo update-grub
