" Inicio config
syntax on
 
set title
set number
set mouse=a
set noerrorbells
set nowrap
set relativenumber
set smartindent
set numberwidth=1
set noswapfile
set nobackup 
set incsearch
set ignorecase
set smartcase
set clipboard=unnamedplus
set encoding=utf-8
set showmatch
set showcmd
set ruler
set sw=2
set laststatus=2
set noshowmode
set cursorline
set autoindent 
set splitright
set splitbelow
set colorcolumn=130
set spelllang=en,es

" tab

set tabstop=2
set shiftwidth=2
set expandtab


" Plugins


call plug#begin()
" Syntax
Plug 'sheerun/vim-polyglot'

" Theme

Plug 'ray-x/aurora'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" IDE
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" GIT

Plug 'tpope/vim-fugitive'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Typing  

Plug 'chun-yang/auto-pairs'  
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround' 
Plug 'yggdroot/indentline'

" autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ddollar/nerdcommenter'

" Icons

Plug 'ryanoasis/vim-devicons'
" test

" Funcionality

Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/syntastic'

call plug#end()

" Theme

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

"""""""

" Plugins Configurations

"""""""

" Vim Devicons

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

" Maps

let mapleader = " "

" block keys

nnoremap <up> <nop>
nnoremap <left> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>

" Vim uses

nnoremap <leader>nt :NERDTree<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
"  nnoremap <leader>Q :q!<CR>

" moverse entre archivos
map <leader>h :tabprevious<cr>
map <leader>l :tabnext<cr>

" fast moves
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

" node

nnoremap <leader>x :!node %<cr>

" resize

noremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
noremap <silent> <up> :resize -5<CR>
noremap <silent> <down> :resize +5<CR>
nnoremap <leader>e :e $MYVIMRC<CR>

" terminal

vnoremap <c-t> :vertical split<CR>:terminal<CR>:vertical resize 66<CR>
nnoremap <c-t> :vertical split<CR>:terminal<CR>:vertical resize 66<CR>

let NERDTreeQuitOnOpen = 1
let g:BASH_Ctrl_j = 'off'
