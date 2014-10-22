# setup ohmyzsh
curl -L http://install.ohmyz.sh | sh
# or wget --no-check-certificate http://install.ohmyz.sh -O - | sh

# setup vim-pathogen
git clone git@github.com:tpope/vim-pathogen.git ~/.vim-pathogen
cd ~/.vim/
ln -s ~/.vim-pathogen/autoload .

# setup git commit editor
git config --global core.editor `which vim`
