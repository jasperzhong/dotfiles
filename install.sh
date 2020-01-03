#/bin/bash

# zsh
sudo apt-get install -y zsh
sudo chsh -s $(which zsh) $(whoami)

# oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cp .zshrc ~/.zshrc

# tmux
sudo apt remove tmux
mkdir ~/repos && cd ~/repos
git clone https://github.com/tmux/tmux.git
cd tmux
sudo apt-get install -y libevent-dev libncurses5-dev
git checkout 2.9a
sh autogen.sh
./configure && make

# tmux-config
cd ~/repos
git clone https://github.com/samoshkin/tmux-config.git
cd tmux-config
./install.sh

# vim
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
echo colorscheme ir_black  >> ~/.vimrc.local
