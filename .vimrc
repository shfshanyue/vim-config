" 开启缩进
filetype plugin indent on

let mapleader=","

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

" autocmd FileType markdown set shiftwidth=4 tabstop=4

set autoindent
set smartindent
set autoread
au CursorHold,CursorHoldI * checktime

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

" 开启剪切板
" set clipboard=unnamedplus



" --------------------------- plugins --------------------------------
set rtp+=~/.vim-config/plugins/vim-pathogen

call pathogen#infect('~/.vim-config/plugins/{}')
call pathogen#helptags()

" => Nerd Tree
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

" => CTRL-P
let g:ctrlp_working_path_mode = 0

map <leader>f :CtrlPMRUFiles<cr>
map <leader>b :CtrlPBuffer<cr>

let g:ctrlp_max_height = 15
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

" => Syntastic
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_html_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1

" => Solarized Theme
set background=light
colorscheme solarized

" => lightline
let g:lightline = {
\ 'colorscheme': 'solarized',
\ }

" => vim-jsx
let g:jsx_ext_required = 0

" => vim-emmet
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

" => vim-markdown
let g:vim_markdown_new_list_item_indent = 4

let dart_style_guide = 2
let dart_format_on_save = 1
