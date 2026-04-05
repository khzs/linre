#

sudo apt install -y podman-compose keyd

flatpak_apps_autostart_yes=(
  org.localsend.localsend_app
  org.qbittorrent.qBittorrent
  org.jellyfin.JellyfinServer
)
flatpak_apps_autostart_no=(
)

flatpak install -y --app "${flatpak_apps_autostart_yes[@]}" "${flatpak_apps_autostart_no[@]}"

mkdir -p ~/.config/autostart
for app in "${flatpak_apps_autostart_yes[@]}"; do
  cp -L "/var/lib/flatpak/exports/share/applications/${app}.desktop" ~/.config/autostart/
done

sudo cp resources/default.conf /etc/keyd/
sudo systemctl enable keyd
sudo systemctl restart keyd

# usb portba dugott egerre wakeup meglegyen
lsusb | grep Xiaomi
echo 'ACTION=="add", KERNEL=="1-3", SUBSYSTEM=="usb", ATTR{power/wakeup}="enabled"' | sudo tee /etc/udev/rules.d/90-usb-wakeup.rules

sudo mv /etc/grub.d/30_os-prober /etc/grub.d/09_os-prober
sudo patch --forward --reject-file=- /etc/default/grub resources/grub.patch
sudo update-grub
