" 开启缩进
filetype plugin indent on

let mapleader = ","

" ,w -> 保存
nmap <leader>w :w!<cr>
" W  -> 使用密码保存只读文件
command W w !sudo tee % > /dev/null


" 鼠标最下位置控制在倒数第七行
set scrolloff=7
set wildmenu
set cmdheight=2

" 智能处理退格键的功能
set backspace=eol,start,indent

" 忽略大小写
set ignorecase
set smartcase

" 高亮查找关键字
set hlsearch

" 查找关键字时，即时匹配
set incsearch

set magic
set showmatch 
set mat=2

set foldcolumn=1


syntax enable 
set encoding=utf8

" 不自动备份文件
set nobackup
set nowritebackup

" 不产生交换文件(当打开一个文件未正常关闭时会产生交换文件)
set noswapfile

" 兼容 tmux (若不设置此项，tmux 仅仅会在内容区设置背景)
set term=screen-256color
set background=dark

" tab == 2 space
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set autoindent
set smartindent

" 自动换行
set wrap

" 快速切换窗口
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set switchbuf=useopen,usetab,newtab
set showtabline=2

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 显示状态栏
set laststatus=2

" 缩进
set foldmethod=syntax

" 多文件操作时，保留操作记录(可以回退)
set undofile
set undodir=~/.vim-config/undo_dirs
