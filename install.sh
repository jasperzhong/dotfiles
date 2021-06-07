#/bin/bash

# zsh
sudo apt-get install -y zsh
sudo chsh -s $(which zsh) $(whoami)

# oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cp .zshrc ~/.zshrc

# tmux
sudo apt remove -y tmux
mkdir ~/repos && cd ~/repos
git clone https://github.com/tmux/tmux.git
cd tmux
sudo apt-get install -y libevent-dev libncurses5-dev automake
git checkout 2.9a
sh autogen.sh
./configure && make
sudo make install 

# tmux-config
cd ~/repos
git clone https://github.com/vycezhong/tmux-config.git
cd tmux-config
./install.sh

# vim
cd ~/
cp .vimrc ~/.vimrc
