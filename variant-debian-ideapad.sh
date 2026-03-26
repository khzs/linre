#
# this is to be installed after the anchor / basic install completed, run as standalone

sudo apt install podman-compose gnome-tweaks -y                # gnome-tweaks : Startup applications
brew install yt-dlp
flatpak install org.localsend.localsend_app org.qbittorrent.qBittorrent org.jellyfin.JellyfinServer -y

# usb portba dugott egerre wakeup meglegyen
lsusb | grep Xiaomi
echo 'ACTION=="add", KERNEL=="1-3", SUBSYSTEM=="usb", ATTR{power/wakeup}="enabled"' | sudo tee /etc/udev/rules.d/90-usb-wakeup.rules




# ezt lehetne fullra scriptelni, meg nincs kesz

# grub
sudo mv /etc/grub.d/30_os-prober /etc/grub.d/09_os-prober
sudo micro /etc/default/grub
sudo update-grub
