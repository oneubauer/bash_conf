set number
syntax enable

set tabstop=4 
set softtabstop=4 
set expandtab

set showcmd  
set cursorline

set showmatch

set incsearch 
set hlsearch 

let mapleader=","

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
