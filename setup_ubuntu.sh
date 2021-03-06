#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace
set -o pipefail

# Upgrade already installed packages
sudo apt update
sudo apt -y upgrade
sudo apt -y install software-properties-common

# Setup Environment
# zsh and tmux
sudo apt -y install zsh zsh-common tmux wget
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
cp files/.zshrc ${HOME}/
cp files/.tmux.conf ${HOME}/

# neovim
sudo apt -y install vim vim-common vim-runtime exuberant-ctags ncurses-term curl
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt update
sudo apt -y install python-dev python-pip python3-dev python3-pip neovim
NEOVIM_CONFIG_DIR=${HOME}/.config/nvim
mkdir -p ${NEOVIM_CONFIG_DIR}
cp files/.config/nvim/init.vim ${NEOVIM_CONFIG_DIR}
echo "\n\n\nExecute"
echo "nvim +PlugInstall +qall"
