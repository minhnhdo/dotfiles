source $HOME/.antigen/antigen.zsh

# antigen config
antigen use oh-my-zsh

antigen theme bhilburn/powerlevel9k

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

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias edit='emacsclient -nw'

export SDKMAN_DIR="$HOME/.sdkman"

for to_source in $HOME/.nvm/nvm.sh                \
                 $HOME/.rvm/scripts/rvm           \
                 $HOME/.cargo/env                 \
                 $SDKMAN_DIR/bin/sdkman-init.sh   \
                 $HOME/.company-config            \
                 $NVM_DIR/bash_completion
do
  [[ -s $to_source ]] && source $to_source
done

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
