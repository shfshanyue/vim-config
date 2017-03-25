set rtp+=~/.vim-config/plugins/vim-pathogen

call pathogen#infect('~/.vim-config/plugins/{}')
call pathogen#helptags()

" => Nerd Tree
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
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

" => Solarized Theme
let g:solarized_termcolors=256
set background=light
colorscheme solarized

" => lightline
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" => vim-jsx
let g:jsx_ext_required = 0
