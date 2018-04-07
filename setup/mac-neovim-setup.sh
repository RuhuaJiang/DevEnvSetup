# Make sure done it after mac-vim setup 
mkdir -p ~/.config/nvim/
#https://neovim.io/doc/user/nvim.html#nvim-from-vim 
cat << EOF > ~/.config/nvim/init.vim 
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc
EOF

echo alias vim=\"nvim\"  >> ~/.bash_profile 
source ~/.bash_profile
