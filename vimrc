set nocompatible
set number
set wrap
set encoding=utf-8
set wildmenu
set lazyredraw
set showmatch
set laststatus=2
set ruler
set incsearch
set smartcase
set hlsearch
set showtabline=2
set noshowmode
syntax on

set autoindent noexpandtab tabstop=4 shiftwidth=4

filetype plugin on

set cursorline
hi CursorLineNr cterm=none
highlight CursorLine ctermbg=235 term=none cterm=none
set backspace=indent,eol,start

noremap L :set invnumber<CR>

" Automatic Installation of VimPlug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'tomasiser/vim-code-dark'
Plug 'vim-scripts/AutoComplPop'
call plug#end()


set t_Co=256
set t_ut=
let g:lightline = { 'colorscheme': 'codedark' }
colorscheme codedark

set complete+=kspell
set completeopt=menuone,longest
