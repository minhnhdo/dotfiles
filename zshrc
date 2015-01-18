# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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
plugins=(autojump fabric git golang heroku history-substring-search scala zsh-completions zsh-syntax-highlighting)
fpath=($HOME/.oh-my-zsh/plugins/zsh-completions/src $fpath)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export EDITOR=vim

# For ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# For virtualenv
export WORKON_HOME="~/.virtualenvs"
export PROJECT_HOME="$HOME/Documents/Workspace"
export STUDY_HOME="$HOME/Documents/Study"
export ANDROID_HOME="/usr/local/opt/android-sdk"

export GOPATH="$PROJECT_HOME/golang"

export PATH="./.cabal-sandbox/bin:$HOME/.cabal/bin:$PATH:/usr/lib/ccache:$GOPATH/bin:$HOME/.rvm/bin:$HOME/.nimble/bin/"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/opt/lib"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias rak='bin/rake'
alias rai='bin/rails'

for to_source in $HOME/.nvm/nvm.sh      \
                 $HOME/.rvm/scripts/rvm \
                 $HOME/.company-config  ; do
  [[ -s $to_source ]] && source $to_source
done
