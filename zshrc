export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="pygmalion"
#CASE_SENSITIVE="true"
#DISABLE_AUTO_UPDATE="false"
#export UPDATE_ZSH_DAYS=13
#DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="true"
#ENABLE_CORRECTION="true"
#COMPLETION_WAITING_DOTS="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"

plugins=(git tmux docker last-working-dir)

ZSH_TMUX_AUTOSTART="true"
#ZSH_TMUX_FIXTERM_WITH_256COLOR="true"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/peco_linux_amd64:/opt/go/bin:/usr/lib/jvm/java-7-oracle/bin:/usr/lib/jvm/java-7-oracle/db/bin:/usr/lib/jvm/java-7-oracle/jre/bin:/home/darth/engageSPARK/dev/android-sdk-linux/tools:/home/darth/engageSPARK/dev/android-sdk-linux/platform-tools:/home/darth/.vim/bundle/vim-go"
# export MANPATH="/usr/local/man:$MANPATH"

export GOPATH="/home/spekkio/dev/gocode"
export ANDROID_HOME=/home/darth/engageSPARK/dev/android-sdk-linux/
export NVM_DIR="/home/spekkio/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

export LC_ALL=en_US.utf8
export LANG=en_US.utf8
export LANGUAGE=en_US.utf8

export DEBFULLNAME="Darth"
export DEBEMAIL="dummymael+launchpad@gmail.com"

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob
bindkey -e
bindkey '^R' history-incremental-search-backward

docker_rm()
{
	IDS=$(docker ps -a | grep Exited)
	if [[ -z $IDS ]]; then
		echo "No 'Exited' Docker containers to remove."
	else
		echo "Removing Docker containers..."
		docker rm -v $(docker ps -a | grep Exited | awk '{print $1}')
		echo "Done."
	fi
}

docker_rmi()
{
	IDS=$(docker images | grep none)
	if [[ -z $IDS ]]; then
		echo "No <none> Docker images to remove."
	else
		echo "Removing Docker images..."
		docker rmi $(docker images | grep none | awk '{print $3}')
		echo "Done."
	fi

}

alias drm=docker_rm
alias drmi=docker_rmi
