source $HOME/.antigen/antigen.zsh

# antigen config
antigen use oh-my-zsh

antigen theme bhilburn/powerlevel9k powerlevel9k

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

export PROJECT_HOME="$HOME/Documents/Workspace"
export STUDY_HOME="$HOME/Documents/Study"

export PYENV_ROOT="$HOME/.pyenv"
export WORKON_HOME="$HOME/.virtualenvs"
export ANDROID_HOME="/usr/local/opt/android-sdk"
export RUST_SRC_PATH="$PROJECT_HOME/rust/rust/"
export GOPATH="$PROJECT_HOME/golang"

export PATH="./.cabal-sandbox/bin:./node_modules/.bin:$PYENV_ROOT/bin:$PATH:$HOME/.local/bin:$GOPATH/bin:$HOME/.rvm/bin"

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
pyenv virtualenvwrapper_lazy
