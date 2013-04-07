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

# python virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# GNOME keyring manager
SSH_AUTH_SOCK=`ss -xl | grep -o /run/user/1000/keyring-*/ssh`
[ -z SSH_AUTH_SOCK ] || export SSH_AUTH_SOCK

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(git:\1)/'
}
export PS1="[\[\033[00m\]\u@\h\[\033[01;34m\] \W \[\033[31m\]\$(parse_git_branch)\[\033[00m\]]$\[\033[00m\] "
