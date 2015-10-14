#!/bin/sh

for name in emacs.d zshrc screenrc gitconfig gitignore
do
  rm -rf $HOME/.$name
  ln -s `pwd`/$name $HOME/.$name
done
