#!/bin/bash
set -e

GPARTED_ISO=$(curl -sL "https://sourceforge.net/projects/gparted/files/gparted-live-stable/" | grep -oP 'gparted-live-[\d.-]+-amd64\.iso' | head -n 1)
GPARTED_URL="https://downloads.sourceforge.net/gparted/$GPARTED_ISO"

sudo mkdir -p /boot/gparted
sudo wget "$GPARTED_URL" -O /boot/gparted/gparted.iso

# blkid usually requires sudo
BOOT_PART=$(df /boot | tail -1 | awk '{print $1}')
UUID=$(sudo blkid -s UUID -o value "$BOOT_PART")
sed "s/__BOOT_UUID__/$UUID/g" resources/40_custom.template | sudo tee /etc/grub.d/40_custom > /dev/null
sudo chmod +x /etc/grub.d/40_custom
