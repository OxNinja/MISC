" ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
" ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
" ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
" ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

" Plugins
call plug#begin('~/.config/nvim/autoload/plug.vim')

" pywal config
Plug 'dylanaraps/wal.vim'
" colorscheme wal

" fugitive (git)
Plug 'tpope/vim-fugitive'

" python IDE
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" html5
Plug 'othree/html5.vim'

" css3
Plug 'hail2u/vim-css3-syntax'

call plug#end()
" End plugins


" Config

colorscheme monokai-bold
"colorscheme material-monokai is pretty good too

set number
syntax on
set tabstop=4 softtabstop=4 shiftwidth=4 showmatch expandtab autoindent smartindent wrap

if !&scrolloff
  set scrolloff=3
endif

if !&sidescrolloff
  set sidescrolloff=5
endif

map <C-l> :noh<ENTER>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

tnoremap <Esc> <C-\><C-n>
tnoremap <M-[> <Esc>
tnoremap <C-v><Esc> <Esc>

let g:pymode_python = 'python3'
