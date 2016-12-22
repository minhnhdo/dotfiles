source $HOME/.antigen/antigen.zsh

# antigen config
antigen use oh-my-zsh

antigen theme bhilburn/powerlevel9k powerlevel9k

antigen bundles <<BUNDLES
  history-substring-search
  git
  lein

  zsh-users/zsh-completions
  zsh-users/zsh-syntax-highlighting
BUNDLES

antigen apply

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# own config

export EDITOR=nvim

export PROJECT_HOME="$HOME/Documents/Workspace"
export STUDY_HOME="$HOME/Documents/Study"

export RUST_SRC_PATH="$HOME/.local/src/rustc-1.9.0/src"
export CARGO_HOME="$HOME/.cargo"

export PYENV_ROOT="$HOME/.pyenv"
export WORKON_HOME="$HOME/.virtualenvs"
export ANDROID_HOME="$HOME/.local/opt/android-sdk"
export GOPATH="$PROJECT_HOME/golang"

export PATH="./.cabal-sandbox/bin:./node_modules/.bin:$PYENV_ROOT/bin:$PATH:$HOME/.local/bin:$GOPATH/bin"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias rak='bin/rake'
alias rai='bin/rails'

eval "$(pyenv init -)"
pyenv virtualenvwrapper_lazy

for to_source in $HOME/.nvm/nvm.sh                \
                 $HOME/.rvm/scripts/rvm           \
                 $HOME/.cargo/env                 \
                 $HOME/.sdkman/bin/sdkman-init.sh \
                 $HOME/.company-config
do
  [[ -s $to_source ]] && source $to_source
done
