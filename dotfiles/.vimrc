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
" Code Completion 
Plugin 'Valloric/YouCompleteMe'

" Surround 
" https://www.youtube.com/watch?v=5HF4jSyPpvs
Plugin 'tpope/vim-surround'

" Support snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Super tab
Plugin 'ervandew/supertab' 
" Go  Programming related
Plugin 'fatih/vim-go'
"XML plugin
Plugin 'sukima/xmledit'

" Python Related 
Plugin 'klen/python-mode'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"color scheme 
Plugin 'altercation/vim-colors-solarized'
"syntax highlighting 
Plugin 'scrooloose/syntastic'
"Pair bracets 
Plugin 'jiangmiao/auto-pairs'

" Perl related 
Plugin 'vim-perl/vim-perl'

" C/C++
Plugin 'c.vim'

" Scala support 
Plugin 'derekwyatt/vim-scala'

" autoformat 
" Make sure install correspoding formating tools first. 
" e.g 
" for python: pip install --upgrade autopep8
" for perl: It can be installed from CPAN cpanm Perl::Tidy
Plugin 'Chiel92/vim-autoformat'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

"YouCompleteMe 
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

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
set backspace=indent,eol,start


"Key remap
imap jj <Esc>
