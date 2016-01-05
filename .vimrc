" Pathogen
filetype off " Pathogen needs to run before plugin indent on
execute pathogen#infect()
execute pathogen#helptags()
" generate helptags for everything in 'runtimepath'
if has ("autocmd")
	filetype plugin indent on
endif

set number
syntax enable


set t_Co=256
colorscheme twilight256
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent    " always set autoindenting on
"set copyindent    " copy the previous indentation on autoindenting

"set expandtab

set showcmd
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkred guifg=white

"ctrl+hjkl for moving between splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" moving between tabs
map <C-S-]> gt
map <C-S-[> gT
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
map <C-0> :tablast<CR>


" for airline
set laststatus=2


"remap set list
nmap <leader>l :set list!<CR>
" nicer symbols for set list
set listchars=tab:▸\ ,eol:¬

set undolevels=1000

set showmatch

set incsearch
set ignorecase smartcase
set hlsearch
set hidden

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" toggle gundo
"nnoremap <leader>u :GundoToggle<CR>
set paste
