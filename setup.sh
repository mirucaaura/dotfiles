#!/usr/bin/bash
DOT_FILES=(.bashrc .vimrc .tmux.conf)
for file in ${DOT_FILES[@]}
do
	[ ! -e $file ] && ln -s $HOME/dotfiles/$file $HOME/$file
done
