# Run manually
sudo apt-get install fish
chsh -s $(which fish)
# Run rest as script
mkdir -p ~/.local/bin
wget -P ~/.local/bin/ https://github.com/neovim/neovim/releases/download/v0.10.1/nvim.appimage
chmod u+x ~/.local/bin/nvim.appimage
ln -s ~/.local/bin/nvim.appimage ~/.local/bin/nvim
git clone git@github.com:SrikarVanavasam/LazyVim.config.git ~/.config/nvim
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
curl -L https://raw.githubusercontent.com/SrikarVanavasam/dotfiles/main/config.fish > .config/fish/config.fish
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
./miniconda/bin/conda init fish
rm Miniconda3-latest-Linux-x86_64.sh
conda config --set changeps1 False
omf install pure
omf theme pure
omf install https://github.com/decors/fish-colored-man
