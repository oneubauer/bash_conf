" Pathogen
filetype off " Pathogen needs to run before plugin indent on
execute pathogen#infect()
execute pathogen#helptags() 
" generate helptags for everything in 'runtimepath'
filetype plugin indent on

set number
syntax enable

set t_Co=256
colorscheme twilight256
set tabstop=4 
set softtabstop=4 
"set expandtab

set showcmd  
set cursorline

set showmatch

set incsearch 
set ignorecase smartcase
set hlsearch 

let mapleader=","

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" toggle gundo
"nnoremap <leader>u :GundoToggle<CR>
