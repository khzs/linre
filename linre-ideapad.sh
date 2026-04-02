#

#
sudo apt install podman-compose keyd gnome-tweaks -y                # gnome-tweaks : Startup applications
flatpak install org.localsend.localsend_app org.qbittorrent.qBittorrent org.jellyfin.JellyfinServer -y

sudo cp resources/default.conf /etc/keyd/
sudo systemctl enable keyd
sudo systemctl restart keyd

# usb portba dugott egerre wakeup meglegyen
lsusb | grep Xiaomi
echo 'ACTION=="add", KERNEL=="1-3", SUBSYSTEM=="usb", ATTR{power/wakeup}="enabled"' | sudo tee /etc/udev/rules.d/90-usb-wakeup.rules




# ezeket lehetne fullra scriptelni, meg nincs kesz

# grub
sudo mv /etc/grub.d/30_os-prober /etc/grub.d/09_os-prober
sudo micro /etc/default/grub
sudo update-grub
