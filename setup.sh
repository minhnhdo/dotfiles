#! /bin/bash

# verbose and exit on error
set -xe

for f in gitconfig jshintrc spacemacs tmux.conf vimrc zshrc taskrc
do
  ln -s $PWD/$f $HOME/.$f
done

mkdir -p $HOME/.config/nvim/
ln -s $PWD/vimrc $HOME/.config/nvim/init.vim
