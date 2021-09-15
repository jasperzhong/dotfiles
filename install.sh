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
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# open vim and :PluginInstall

# vim plugin - YouCompleteMe
sudo apt-get install g++-8 clangd-10 clang-7
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
# install cmake (ignore here)
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 20
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 20
cd ~/.vim
git clone --depth 1 https://github.com/ycm-core/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py --clangd-completer 


# vim plugin - tagbar
cd ~/repos
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure --prefix=/usr/local
make
sudo make install

# vim plugin - vim-flake8
pip3 install flake8

# vim plugin - vim-autoformat
sudo apt-get install -y clang-format
pip3 install autopep8
