export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=13

ZSH_THEME="pygmalion"
CASE_SENSITIVE="false"
DISABLE_AUTO_UPDATE="false"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="false"
HIST_STAMPS="mm/dd/yyyy"

plugins=(git tmux docker mvn gradle pip last-working-dir)

ZSH_TMUX_AUTOSTART="false"
ZSH_TMUX_FIXTERM_WITH_256COLOR="true"

export GOROOT="$HOME/Development/toolchain/go"
export JAVA_HOME="$HOME/Development/toolchain/java"
export MAVEN_HOME="$HOME/Development/toolchain/maven"
export GRADLE_HOME="$HOME/Development/toolchain/gradle"
export IDEA_HOME="$HOME/Development/toolchain/idea"
PATH="$PATH:$GOROOT/bin:$JAVA_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin:$IDEA_HOME/bin"

source $ZSH/oh-my-zsh.sh

export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/Development/code/github.com/dummymael"
export VIRTUALENVWRAPPER_SCRIPT="/usr/local/bin/virtualenvwrapper.sh"
export VIRTUAL_ENV_DISABLE_PROMPT="true"
source /usr/local/bin/virtualenvwrapper_lazy.sh

export BLOG_HOME="$HOME/Blogs"
export BLOG_DB="$BLOG_HOME/darthbinamira.com"

# misc
export EDITOR='vim'

export LC_ALL=en_US.utf8
export LANG=en_US.utf8
export LANGUAGE=en_US.utf8

# ubuntu launchpad
export DEBFULLNAME="Darth"
export DEBEMAIL="dummymael+launchpad@gmail.com"

# history related
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob
bindkey -e
bindkey '^R' history-incremental-search-backward

# aliases
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
alias jekyll_db="docker run --rm --name="jekyll_db" -it --volume=$BLOG_DB:/srv/jekyll -p 4000:4000 jekyll_s3:1.3 jekyll s -w"
alias jekyll_db_shell="docker exec -it jekyll_db bash"
