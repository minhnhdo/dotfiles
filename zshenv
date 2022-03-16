export EDITOR=nvim

export PROJECT_HOME="$HOME/Documents/Workspace"
export STUDY_HOME="$HOME/Documents/Study"

export CARGO_HOME="$HOME/.cargo"

export PYENV_ROOT="$HOME/.pyenv"
export WORKON_HOME="$HOME/.virtualenvs"
export ANDROID_HOME="$HOME/.local/opt/android-sdk"
export GOPATH="$PROJECT_HOME/golang"

eval $(pyenv init --path)

export PATH="$HOME/.cargo/bin:./.cabal-sandbox/bin:./node_modules/.bin:$PYENV_ROOT/bin:$HOME/.mathlib/bin:$HOME/.elan/bin:$PATH:$HOME/.local/bin:$GOPATH/bin:$HOME/.rvm/bin"
