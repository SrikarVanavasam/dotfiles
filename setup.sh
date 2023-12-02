mkdir -p ~/.local/bin
wget -P ~/.local/bin/ https://github.com/neovim/neovim/releases/download/v0.9.1/nvim.appimage
chmod u+x ~/.local/bin/nvim.appimage
ln -s ~/.local/bin/nvim.appimage ~/.local/bin/nvim
git clone https://github.com/SrikarVanavasam/LazyVim.config.git ~/.config/nvim
sudo apt-get install fish
chsh -s $(which fish)
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
./miniconda/bin/conda init fish
rm Miniconda3-latest-Linux-x86_64.sh
