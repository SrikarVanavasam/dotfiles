# Run manually
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt-get install fish
chsh -s $(which fish)
# Run rest as script
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl -L https://raw.githubusercontent.com/SrikarVanavasam/dotfiles/main/.tmux.conf > .tmux.conf
mkdir -p ~/.local/bin
wget -P ~/.local/bin/ https://github.com/neovim/neovim/releases/download/v0.11.1/nvim-linux-x86_64.appimage
chmod u+x ~/.local/bin/nvim-linux-x86_64.appimage
ln -s ~/.local/bin/nvim-linux-x86_64.appimage ~/.local/bin/nvim
git clone git@github.com:SrikarVanavasam/LazyVim.config.git ~/.config/nvim
curl -L https://raw.githubusercontent.com/SrikarVanavasam/dotfiles/main/config.fish > .config/fish/config.fish
mkdir -p .config/fish/themes
wget -P .config/fish/themes/ https://raw.githubusercontent.com/catppuccin/fish/main/themes/Catppuccin%20Mocha.theme
fish_config theme save "Catppuccin Mocha"
curl -sS https://starship.rs/install.sh | sh -s -- --yes
echo 'starship init fish | source' >> ~/.config/fish/config.fish
wget -P .config/ https://raw.githubusercontent.com/SrikarVanavasam/dotfiles/refs/heads/main/starship.toml
sudo snap install zellij --classic
wget -P .config/zellij/ https://raw.githubusercontent.com/catppuccin/zellij/refs/heads/main/catppuccin.kdl
curl -L https://raw.githubusercontent.com/SrikarVanavasam/dotfiles/main/config.kdl > .config/zellij/config.kdl
#Conda stuff
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
./miniconda/bin/conda init fish
rm Miniconda3-latest-Linux-x86_64.sh
conda config --set changeps1 False
