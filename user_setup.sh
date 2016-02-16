#!/bin/sh

BASEDIR=$(pwd)

# setup oh-my-zsh
# setting user shell to zsh fails when doing a curl + pipe as discussed here:
# https://github.com/robbyrussell/oh-my-zsh/issues/3516
sh -c "$(curl -fsSL http://install.ohmyz.sh)"
# curl -L http://install.ohmyz.sh | sh
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
rm ~/.zprofile
ln -s $BASEDIR/zprofile ~/.zprofile
ln -s $BASEDIR/curlrc ~/.curlrc
mkdir -p ~/.config/terminator
ln -s $BASEDIR/terminator_config ~/.config/terminator/config
rm ~/.gitconfig
ln -s $BASEDIR/gitconfig_global ~/.gitconfig
mkdir -p ~/.xmonad
ln -s $BASEDIR/xmonad.hs ~/.xmonad/xmonad.hs
ln -s $BASEDIR/xmobarrc ~/.xmobarrc

cd ~/.oh-my-zsh/themes
git apply pygmalion_mod_virtualenv.patch

