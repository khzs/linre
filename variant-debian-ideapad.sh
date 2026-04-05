#
# this is to be installed after the anchor / basic install completed, run as standalone

sudo apt install podman-compose gnome-tweaks -y                # gnome-tweaks : Startup applications
brew install yt-dlp
flatpak install org.localsend.localsend_app org.qbittorrent.qBittorrent org.jellyfin.JellyfinServer -y

# usb portba dugott egerre wakeup meglegyen
sudo cp resources/90-usb-wakeup.rules /etc/udev/rules.d/

sudo mv /etc/grub.d/30_os-prober /etc/grub.d/09_os-prober
sudo patch --forward --reject-file=- /etc/default/grub resources/grub.patch
sudo update-grub
