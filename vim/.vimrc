""""""""""""""""""Plugins""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'vimwiki/vimwiki'
Plug 'dylanaraps/wal.vim'
Plug 'junegunn/goyo.vim'
Plug 'miyakogi/conoline.vim'
Plug 'posva/vim-vue'
call plug#end()
""""""""""""""""""General""""""""""""""""""""""""
  syntax on
  colorscheme wal

  set nocompatible
  set encoding=utf-8
  set clipboard=unnamed

  filetype on
  filetype plugin on
  set omnifunc=syntaxcomplete#Complete

  set wildmode=longest,list,full

" Display
  set title

  set number
  set relativenumber

  set ruler
  set wrap "long lines are wrapped

  set scrolloff=3 "3 lines always appearing when scrolling

" Search
  set ignorecase
  set smartcase

  set incsearch
  set hlsearch

" Beeps
  set noerrorbells

" indentation:
  set backspace=indent,eol,start

  set autoindent
  set smartindent

  set tabstop=4        " tab width is 4 spaces
  set shiftwidth=4     " indent also with 4 spaces
  set expandtab        " expand tabs to spaces
  filetype indent on

" Encryption method to bluefish2
  set cm=blowfish2

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
	vnoremap <C-c> "+y
	map <C-p> "+P

" split navigations
	set splitbelow splitright

  nnoremap <C-J> <C-W><C-J>
  nnoremap <C-K> <C-W><C-K>
  nnoremap <C-L> <C-W><C-L>
  nnoremap <C-H> <C-W><C-H>
" tab navigation
  "nnoremap <C-<Tab>> :tabn<CR>

" Automatically deletes all tralling whitespace on save.
  autocmd BufWritePre * %s/\s\+$//e

" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

"""""""""""""""""""Plugins mappings"""""""""""""
  ""GOYO
  map <leader>f :Goyo \| set linebreak<CR>

  " Spell-check set to <leader>o, 'o' for 'orthography':
  map <leader>o :setlocal spell! spelllang=en_us<CR>
  " VimWiki
  let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

