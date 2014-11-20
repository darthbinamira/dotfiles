# setup ohmyzsh
curl -L http://install.ohmyz.sh | sh
# or wget --no-check-certificate http://install.ohmyz.sh -O - | sh

# setup vim-pathogen
git clone git@github.com:tpope/vim-pathogen.git ~/.vim-pathogen
cd ~/.vim/
ln -s ~/.vim-pathogen/autoload .
mkdir -p ~/.vim/bundle

# setup git commit editor
git config --global core.editor `which vim`

cd ~/.vim/bundle

# setup NERD tree
# http://stackoverflow.com/a/103590
git clone https://github.com/scrooloose/nerdtree.git

# setup vim-go
# https://github.com/fatih/vim-go
git clone https://github.com/fatih/vim-go.git
