#! /bin/bash

# verbose and exit on error
set -xe

for f in gitconfig jshintrc spacemacs tmux.conf vimrc zshenv zshrc taskrc
do
  ln -sf $PWD/$f $HOME/.$f
done

mkdir -p $HOME/.config/nvim/
ln -sf $PWD/vimrc $HOME/.config/nvim/init.vim
