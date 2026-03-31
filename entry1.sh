#

su -c "/usr/sbin/usermod -aG sudo $USER" root < /dev/tty

newgrp sudo << 'EOF'
sudo apt install git -y
git clone https://github.com/khzs/linre.git && cd linre
source linre-debian-gnome.sh
EOF
