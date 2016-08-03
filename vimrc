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

" CtrlP settings
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" All Plugins
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'flazz/vim-colorschemes'

" All Plugins must be declared before this
call vundle#end()            
filetype plugin indent on   

" Ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

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
