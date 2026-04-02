#

sudo apt install podman-compose keyd gnome-tweaks -y                # gnome-tweaks : Startup applications
flatpak install --app qBittorrent JellyfinServer LocalSend -y

sudo cp resources/default.conf /etc/keyd/
sudo systemctl enable keyd
sudo systemctl restart keyd

# usb portba dugott egerre wakeup meglegyen
lsusb | grep Xiaomi
echo 'ACTION=="add", KERNEL=="1-3", SUBSYSTEM=="usb", ATTR{power/wakeup}="enabled"' | sudo tee /etc/udev/rules.d/90-usb-wakeup.rules

sudo mv /etc/grub.d/30_os-prober /etc/grub.d/09_os-prober
sudo patch --forward --reject-file=- /etc/default/grub resources/grub.patch
sudo update-grub
