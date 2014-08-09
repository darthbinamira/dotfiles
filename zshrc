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

plugins=(git tmux docker)

# Some issue with the plugin's autostart feature. Disabling for now.
#ZSH_TMUX_AUTOSTART="true"
#ZSH_TMUX_FIXTERM_WITH_256COLOR="true"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/peco_linux_amd64:/opt/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

export GOPATH="/home/spekkio/dev/gocode"

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

export LC_ALL=en_US.utf8
export LANG=en_US.utf8
export LANGUAGE=en_US.utf8

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob
bindkey -v
bindkey '^R' history-incremental-search-backward
