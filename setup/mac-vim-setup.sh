#!/bin/bash
cmd_e () {
    command -v $1 >/dev/null 2>&1 || exit 1; 
}

install ()  {
    if cmd_e $1 ; then 
        echo "[sudo install] $1 already installed"
    else
        brew  install -y $1
    fi 
}

DOCFILES_ROOT="../dotfiles"
#https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
install git
brew install cmake

if [ ! -d   ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi 

cp $DOCFILES_ROOT/.vimrc ~/.vimrc 
#install all plugins https://github.com/VundleVim/Vundle.vim
vim +PluginInstall +qall
#install YouCompleteMe
if [ ! -f /tmp/YouCompleteMeDone ];then
   python ~/.vim/bundle/YouCompleteMe/install.py
fi 
touch "/tmp/YouCompleteMeDone"
