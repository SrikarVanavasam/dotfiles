# Run manually
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt-get install fish
chsh -s $(which fish)
# Run rest as script
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl -L https://raw.githubusercontent.com/SrikarVanavasam/dotfiles/main/.tmux.conf > .tmux.conf
mkdir -p ~/.local/bin
wget -P ~/.local/bin/ https://github.com/neovim/neovim/releases/download/v0.10.3/nvim.appimage
chmod u+x ~/.local/bin/nvim.appimage
ln -s ~/.local/bin/nvim.appimage ~/.local/bin/nvim
git clone git@github.com:SrikarVanavasam/LazyVim.config.git ~/.config/nvim
# git clone https://github.com/SrikarVanavasam/LazyVim.config.git ~/.config/nvim
curl -L https://raw.githubusercontent.com/SrikarVanavasam/dotfiles/main/config.fish > .config/fish/config.fish
mkdir -p .config/fish/themes
wget -P .config/fish/themes/ https://raw.githubusercontent.com/catppuccin/fish/main/themes/Catppuccin%20Mocha.theme
fish_config theme save "Catppuccin Mocha"
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
./miniconda/bin/conda init fish
rm Miniconda3-latest-Linux-x86_64.sh
conda config --set changeps1 False
