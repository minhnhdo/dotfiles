# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lukerandall"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export EDITOR=vim

# For ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# For virtualenv
export WORKON_HOME="~/.virtualenvs"
export PROJECT_HOME="$HOME/Documents/Workplace"
export STUDY_HOME="$HOME/Documents/Study"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/lib/ccache:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$HOME/.cabal/bin:$GOPATH/bin:$HOME/.rvm/bin"

export GUILE_LOAD_PATH="$PROJECT_HOME/guile:$GUILE_LOAD_PATH"
export GOPATH="$PROJECT_HOME/golang/gopath"
export PYTHONPATH="$HOME/opt/lib/python2.7/site-packages:$HOME/opt/lib/python2.7/dist-packages:$PYTHONPATH"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias rak='bin/rake'
alias rai='bin/rails'

export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"

uprust() {
    DIR=$PROJECT_HOME/rust/rust-dev
    CUR_DIR=$(pwd)
    cd $DIR
    CUR_BRANCH=$(git rev-parse --abbrev-ref HEAD)
    git stash
    git checkout master
    git fetch upstream
    git rebase upstream/master
    if grep 'llvm\|libuv' <<<$(git status --porcelain); then
        git submodule update
    fi
    git push
    git checkout $CUR_BRANCH
    git stash pop
    cd $CUR_DIR
    unset DIR CUR_BRANCH CUR_DIR
}

for to_source in $HOME/.nvm/nvm.sh                        \
                 $HOME/.rvm/scripts/rvm                   \
                 /etc/bash_completion.d/virtualenvwrapper; do
  [[ -s $to_source ]] && source $to_source
done
