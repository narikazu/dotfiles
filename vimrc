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
set whichwrap=h,l
autocmd FileType gitcommit setlocal spell spelllang=en_us
highlight clear cursorline

" Cursor
set cursorline

inoremap <silent> jj <ESC>

" Plugin
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
call plug#end()
