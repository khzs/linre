#

flatpak install com.microsoft.Edge com.github.PintaProject.Pinta -y

# MS Edge "Save as" fix
# https://blog.rdiez.es/p/solucionar-el-cierre-de-microsoft-edge-en-linux-wayland-al-descargar-archivos/


git clone https://github.com/khzs/dotfiles-core.git ~/.config/dotfiles-core
source ~/.config/dotfiles-core/one-time-setup-$(uname).sh

sudo ln -s /home/linuxbrew/.linuxbrew/bin/bat /usr/local/bin/bat
sudo ln -s /home/linuxbrew/.linuxbrew/bin/micro /usr/local/bin/micro
sudo ln -s /home/linuxbrew/.linuxbrew/bin/mc /usr/local/bin/mc
