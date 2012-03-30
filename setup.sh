#!/bin/sh
cmd="mkdir $HOME/.vim"
echo $cmd
$cmd

cmd="mkdir $HOME/.vim/bundle"
echo $cmd
$cmd

cmd="touch $HOME/.vimrc"
echo $cmd
$cmd

cmd="echo 'source ~/init.git/.vimrc' > ~/.vimrc"
echo $cmd
echo 'source ~/init.git/.vimrc' > ~/.vimrc

echo 'install NeoBundle'

cmd="git clone https://github.com/Shougo/neobundle.vim.git $HOME/.vim/bundle/neobundle.vim";
echo $cmd
$cmd
