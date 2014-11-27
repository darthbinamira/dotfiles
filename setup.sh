BASEDIR=$(pwd)

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"

sudo add-apt-repository ppa:gnome-terminator
sudo add-apt-repository ppa:pi-rho/dev

sudo apt-get update
sudo apt-get install -y git vim zsh curl terminator gnome-panel tmux python-pip lxc-docker
sudo pip install -U fig

# setup ohmyzsh
curl -L http://install.ohmyz.sh | sh
# or wget --no-check-certificate http://install.ohmyz.sh -O - | sh

# setup vim-pathogen
git clone https://github.com/tpope/vim-pathogen.git ~/.vim-pathogen
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

# setup git commit editor
git config --global core.editor `which vim`

