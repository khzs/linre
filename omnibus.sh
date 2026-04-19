#

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install com.microsoft.Edge com.github.PintaProject.Pinta it.mijorus.smile -y

# MS Edge "Save as" fix
# https://blog.rdiez.es/p/solucionar-el-cierre-de-microsoft-edge-en-linux-wayland-al-descargar-archivos/
mkdir -p ~/.local/share/applications/
cp /var/lib/flatpak/exports/share/applications/com.microsoft.Edge.desktop ~/.local/share/applications/
patch --forward --reject-file=- ~/.local/share/applications/com.microsoft.Edge.desktop resources/edge.desktop.patch


git clone https://github.com/khzs/dotfiles-core.git ~/.config/dotfiles-core
source ~/.config/dotfiles-core/one-time-setup-$(uname).sh

sudo ln -s /home/linuxbrew/.linuxbrew/bin/bat /usr/local/bin/bat
sudo ln -s /home/linuxbrew/.linuxbrew/bin/micro /usr/local/bin/micro
sudo ln -s /home/linuxbrew/.linuxbrew/bin/mc /usr/local/bin/mc
