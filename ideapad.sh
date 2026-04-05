#

sudo apt install podman-compose keyd gnome-tweaks -y                # gnome-tweaks : Startup applications
flatpak install org.localsend.localsend_app org.qbittorrent.qBittorrent org.jellyfin.JellyfinServer -y

sudo cp resources/default.conf /etc/keyd/
sudo systemctl enable keyd
sudo systemctl restart keyd

# usb portba dugott egerre wakeup meglegyen
sudo cp resources/90-usb-wakeup.rules /etc/udev/rules.d/

sudo mv /etc/grub.d/30_os-prober /etc/grub.d/09_os-prober
sudo patch --forward --reject-file=- /etc/default/grub resources/grub.patch
sudo update-grub
