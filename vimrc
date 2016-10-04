" Spaces and Tabs

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set textwidth=79
set autoindent
set fileformat=unix

" Line Numbering
:set number

" Enable mouse
:set mouse=a

" Use changes in .vimrc right away
autocmd! bufwritepost .vimrc source %

set encoding=utf-8
set noswapfile
set showmatch
filetype off             

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Enable folding
set foldenable
set foldlevel=99
nnoremap <space> za

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" All Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'

" All Plugins must be declared before this
call vundle#end()            
filetype plugin indent on   

" Backup settings
set backup
set backupdir=~.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Enable external clipboard
set clipboard=unnamed

" python syntax settings
let python_highlight_all=1

" Set color scheme
syntax on
set background=dark
set t_Co=256
set term=screen-256color
colorscheme jellybeans
