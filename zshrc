source $HOME/.antigen/antigen.zsh

# antigen config
antigen use oh-my-zsh

antigen theme agnoster

antigen bundles <<BUNDLES
  autojump
  fabric
  git
  golang
  heroku
  history-substring-search
  lein

  zsh-users/zsh-completions
  zsh-users/zsh-syntax-highlighting
BUNDLES

antigen apply

# own config

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
export PYENV_ROOT="$HOME/.pyenv"

export PATH="./.cabal-sandbox/bin:./node_modules/.bin:$HOME/.cabal/bin:$PYENV_ROOT/bin:$PATH:$GOPATH/bin:$HOME/.rvm/bin"

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

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
