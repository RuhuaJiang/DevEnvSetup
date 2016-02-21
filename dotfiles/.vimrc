set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()



" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'Valloric/YouCompleteMe'

" Python Related 
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} 
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"color scheme 
Plugin 'altercation/vim-colors-solarized'
"syntax highlighting 
Plugin 'scrooloose/syntastic'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"YouCompleteMe 
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
""syntax highlighting
let python_highlight_all=1
syntax on

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
" See doc string of fold 
let g:SimpylFold_docstring_preview=1
" Enable colors-solarized 
" http://superuser.com/questions/370556/vim-colors-not-working-properly-in-terminal 
set background=dark
syntax enable
colorscheme solarized

" Python Related
" https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
"
" PEP 8 indentation 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8
"line number 
set nu
