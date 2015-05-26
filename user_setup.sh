#!/bin/sh

BASEDIR=$(pwd)

# setup ohmyzsh
curl -L http://install.ohmyz.sh | sh
# or wget --no-check-certificate http://install.ohmyz.sh -O - | sh

# setup vim-pathogen
git clone https://github.com/tpope/vim-pathogen.git ~/.vim-pathogen
mkdir ~/.vim
cd ~/.vim/
ln -s ~/.vim-pathogen/autoload .
mkdir -p ~/.vim/bundle

cd ~/.vim/bundle

# setup NERD tree
# http://stackoverflow.com/a/103590
git clone https://github.com/scrooloose/nerdtree.git

# setup vim-go
# https://github.com/fatih/vim-go
git clone https://github.com/fatih/vim-go.git

sudo sed -i 's/"1"/"0"/g' /etc/apt/apt.conf.d/10periodic

cd $BASEDIR
ln -s $BASEDIR/tmux.conf ~/.tmux.conf
ln -s $BASEDIR/vimrc ~/.vimrc
rm ~/.zshrc
ln -s $BASEDIR/zshrc ~/.zshrc
mkdir -p ~/.config/terminator
ln -s $BASEDIR/terminator_config ~/.config/terminator/config
rm ~/.gitconfig
ln -s $BASEDIR/gitconfig_global ~/.gitconfig

cd ~/.oh-my-zsh/themes
git apply pygmalion_mod_virtualenv.patch

