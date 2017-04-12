filetype plugin indent on

set autoread

let mapleader = ","

nmap <leader>w :w!<cr>
command W w !sudo tee % > /dev/null


set scrolloff=7
set wildmenu
set cmdheight=2

set backspace=eol,start,indent

set ignorecase
set smartcase
set hlsearch
set incsearch

set magic
set showmatch 
set mat=2

set foldcolumn=1


syntax enable 
set encoding=utf8

set nobackup
set nowritebackup
set noswapfile

" for tmux
set term=screen-256color
set background=dark


set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set autoindent
set smartindent
set wrap

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set switchbuf=useopen,usetab,newtab
set showtabline=2

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set laststatus=2
set foldmethod=syntax

set undofile
set undodir+=~/.vim-config/tmp/undo
