call plug#begin('~/.vim/plugged')

" Plugins go here
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tmhedberg/SimpylFold'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'jnurmine/Zenburn'
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"augroup load_us_ycm
" autocmd!
"  autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
"                     \| autocmd! load_us_ycm
"augroup END

call plug#end()

set number
syntax enable
let python_highlight_all=1

set relativenumber

set t_Co=256
colorscheme twilight256
"colorscheme zenburn

"YCM options
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" filetypes to turn on youcompleteme
let g:ycm_filetype_whitelist = { 'python': 1 }

let g:Powerline_symbols = 'unicode'


set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent    " always set autoindenting on
set expandtab
"set copyindent    " copy the previous indentation on autoindenting
set encoding=utf-8

" mark bad whitespace in python files:
highlight BadWhitespace ctermbg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

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


"if &diff
"    colorscheme some_other_scheme
"endif

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
set paste

" Enable folding
set foldmethod=indent
set foldlevel=99

" REMAPS:
" Enable folding with the spacebar
nnoremap <space> za

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" toggle gundo
"nnoremap <leader>u :GundoToggle<CR>

" swap columns
nnoremap <leader>sc :%s/\v^(\S+)\s+(\S+).*$/\2 \1/<CR>

" raven dance
nnoremap <leader>rd :%s/^\([-+!]\)/ \1/<CR>
" un-raven dance
nnoremap <leader>RD :%s/^ \([-+!]\)/\1/<CR>
