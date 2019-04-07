#/bin/bash

# zsh
sudo apt-get install zsh
sudo chsh -s /bin/zsh

# oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

cp .zshrc ~/.zshrc

# tmux
sudo apt-get install tmux

cp .tmux.conf ~/.tmux.conf

mkdir ~/Tools
git clone https://github.com/tmux-plugins/tmux-resurrect ~/Tools
tmux source-file ~/.tmux.conf

# vim
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
