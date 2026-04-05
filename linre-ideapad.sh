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

patch --forward --reject-file=- ~/.config/autostart/org.jellyfin.JellyfinServer.desktop resources/jellyfin.desktop.patch

sudo cp resources/default.conf /etc/keyd/
sudo systemctl enable keyd
sudo systemctl restart keyd

# usb portba dugott egerre wakeup meglegyen
sudo cp resources/90-usb-wakeup.rules /etc/udev/rules.d/

sudo mv /etc/grub.d/30_os-prober /etc/grub.d/09_os-prober
sudo patch --forward --reject-file=- /etc/default/grub resources/grub.patch
sudo update-grub
