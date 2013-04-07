# go to parent dir fast
alias '..'='cd ..'

# colors
alias ls='ls --color=auto'
alias less='less -r'
alias tree='tree -C'
alias grep='grep --color=auto'

# show where I'm copying
alias cp='cp -v'

# useful shortcuts
alias l='ls -F'
alias lh='l -lh'

#export PATH=$HOME/bin:$PATH:$HOME/opt/android-sdk-linux/platform-tools:$HOME/opt/android-sdk-linux/tools
#export PATH=$HOME/.gem/ruby/1.9.1/bin:$HOME/bin:$PATH
export GOPATH=$HOME/golang
export EDITOR=vim

xrdb -merge $HOME/.Xresources
