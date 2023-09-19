apt-get install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
rm .zshrc; curl -L https://raw.githubusercontent.com/SrikarVanavasam/dotfiles/main/.zshrc > .zshrc
mkdir -p ~/.local/bin
wget -P ~/.local/bin/ https://github.com/neovim/neovim/releases/download/v0.9.1/nvim.appimage
chmod u+x ~/.local/bin/nvim.appimage
ln -s ~/.local/bin/nvim.appimage ~/.local/bin/nvim
git clone https://github.com/SrikarVanavasam/LazyVim.config.git ~/.config/nvim
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
./miniconda/bin/conda init zsh