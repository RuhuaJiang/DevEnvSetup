#!/bin/bash
cmd_e () {
    command -v $1 >/dev/null 2>&1 || exit 1; 
}

sudo_install ()  {
    if cmd_e $1 ; then 
        echo "[sudo install] $1 already installed"
    else
        sudo apt-get install -y $1
    fi 
}

DOCFILES_ROOT="../dotfiles"
#https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
sudo_install git
sudo apt-get install -y  build-essential cmake

if [ ! -d   ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi 

cp $DOCFILES_ROOT/.vimrc ~/.vimrc 
#install all plugins https://github.com/VundleVim/Vundle.vim
vim +PluginInstall +qall
#install YouCompleteMe
sudo apt-get install -y python-dev
if [ ! -f /tmp/YouCompleteMeDone ];then
   python ~/.vim/bundle/YouCompleteMe/install.py
fi 
touch "/tmp/YouCompleteMeDone"

#install minibufexpl.vim
git clone https://github.com/fholgado/minibufexpl.vim.git 
mkdir -p ~/.vim/plugin/
cp  minibufexpl.vim/plugin/minibufexpl.vim  ~/.vim/plugin/

#install tag list 
git clone https://github.com/vim-scripts/taglist.vim.git
mkdir -p ~/.vim/plugin/
cp taglist.vim/plugin/taglist.vim  ~/.vim/plugin/
