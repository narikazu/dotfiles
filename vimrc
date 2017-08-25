syntax enable
set helplang=en
set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:↲,precedes:<,eol:↲
set incsearch
set hlsearch
set nowrap
set showmatch
set whichwrap=h,l
set nowrapscan
set ignorecase
set smartcase
set hidden
set history=2000
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set noswapfile
set showmatch
set title
set nobackup
highlight clear cursorline

hi CursorLineNr cterm=bold

" solarized
"set background=light
"colorscheme solarized
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>
inoremap <silent> jj <ESC>

"vim-markdownの設定
let g:vim_markdown_folding_disabled=1
