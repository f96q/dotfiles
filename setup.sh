#!/bin/sh

for name in emacs.d zshrc zprofile screenrc gitconfig gitignore
do
  rm -rf $HOME/.$name
  ln -s `pwd`/$name $HOME/.$name
done
