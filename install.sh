#!/bin/bash

# check installation
alias conda='/opt/anaconda3/bin/conda'

# git
git config --global user.name "jasperzhong"
git config --global user.email "izhongyuchen@gmail.com"

# zsh
apt-get install -y zsh
chsh -s $(which zsh) $(whoami)

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
wget https://raw.githubusercontent.com/yuchenzhong/dotfiles/master/.zshrc -O .zshrc

# conda
conda init zsh
conda create -n jasper -y python=3.8
echo "conda activate jasper" >> ~/.zshrc
source ~/.zshrc

echo `which python`

# tmux
apt remove -y tmux
mkdir ~/repos && cd ~/repos
git clone https://github.com/tmux/tmux.git && cd tmux
apt-get install -y libevent-dev libncurses5-dev automake
git checkout 2.9a
sh autogen.sh
./configure && make
make install

# tmux-config
cd ~/repos
git clone https://github.com/yuchenzhong/tmux-config.git && cd tmux-config
./install.sh

# neovim
add-apt-repository -y ppa:neovim-ppa/stable
apt-get update
apt-get install -y neovim
pip install neovim
git clone https://github.com/yuchenzhong/nvim.git ~/.config/nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# nodejs
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
apt-get install -y nodejs

# LSP
apt-get install clangd-12
ln -s /usr/bin/clangd-12 /usr/bin/clangd
pip install cmake-language-server
pip install pyright

# tagbar
cd ~/repos
git clone https://github.com/universal-ctags/ctags.git && cd ctags
./autogen.sh
./configure --prefix=/usr/local
make
make install

# vim-autoformat
apt-get install -y clang-format
pip install autopep8


