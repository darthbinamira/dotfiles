export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="pygmalion"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="false"
export UPDATE_ZSH_DAYS=13
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"

plugins=(git tmux docker)

ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_FIXTERM_WITH_256COLOR="true"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/peco_linux_amd64:/opt/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

export GOROOT="/opt/go"
export GOPATH="/home/spekkio/gocode"

source $ZSH/oh-my-zsh.sh

#export LANG=en_US.UTF-8
export EDITOR='vim'

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob
bindkey -v
bindkey '^R' history-incremental-search-backward
