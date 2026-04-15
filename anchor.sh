#!/bin/bash
set -e

sudo apt install git -y
git clone https://github.com/khzs/linre.git && cd linre
source debian-gnome.sh
sudo reboot
