syntax enable

set langmenu=en_US
set number

" Enable true colors
if (has("termguicolors"))
  set termguicolors
endif

" Search
set incsearch
set hlsearch
set showmatch
set ignorecase
set smartcase

" Indentation
set expandtab
set tabstop=2
set shiftwidth=2

set noswapfile
set wrap
set whichwrap=h,l
set tw=0
set formatoptions=q
autocmd FileType gitcommit setlocal spell spelllang=en_us
highlight clear cursorline

" Cursor
set cursorline

inoremap <silent> jj <ESC>

" Plugin
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'lifepillar/vim-solarized8'
call plug#end()

" Colorscheme
set background=dark
colorscheme solarized8

