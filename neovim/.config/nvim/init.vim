""""""""""""""""""Plugins""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/site/plugged')
" Syntax
" Plug 'posva/vim-vue'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'tomtom/tcomment_vim'
" Plugin 'nathanaelkane/vim-indent-guides' "Add visual indicators if indent
" Theming
Plug 'dylanaraps/wal.vim'
Plug 'junegunn/goyo.vim'
Plug 'miyakogi/conoline.vim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'
" Utils
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'
call plug#end()


""""""""""""""""""General""""""""""""""""""""""""
  syntax on
  filetype on
  filetype plugin on

  set nocompatible
  set encoding=utf-8
  set clipboard=unnamed
  set omnifunc=syntaxcomplete#Complete
  set wildmode=longest,list,full
  set spelllang=en_us

  let mapleader = ' '

" Display
  set title
  set number
  set relativenumber
  set ruler
  set wrap "long lines are wrapped
  set scrolloff=3 "3 lines always appearing when scrolling
  set splitbelow splitright
  colorscheme wal

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


"""""""""""""""""""Auto Commands"""""""""""""
" Automatically deletes all tralling whitespace on save.
  autocmd BufWritePre * %s/\s\+$//e
  "
" Run xrdb whenever Xdefaults or Xresources are updated.
  autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %


"""""""""""""""""""Key mappings"""""""""""""
" fold Keymaps
  "inoremap \ <C-O>za
  nnoremap \ za
  onoremap \ <C-C>za
  vnoremap \ zf

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
  vnoremap <C-c> "+y
  map <C-p> "+P

" split navigations
  nnoremap <leader>h :split<CR>
  nnoremap <leader>v :vsplit<CR>
  map <C-J> <C-W><C-J>
  map <C-K> <C-W><C-K>
  map <C-L> <C-W><C-L>
  map <C-H> <C-W><C-H>

  nnoremap <Up> :resize +2<CR>
  nnoremap <Down> :resize -2<CR>
  nnoremap <Left> :vertical resize +2<CR>
  nnoremap <Right> :vertical resize -2<CR>

" spell checking
  map <leader>e :setlocal spell! spelllang=en_us<CR>
  map <leader>f :set spelllang=fr_cm<CR>

" General ket mappings
  map <C-s> :source ~/.config/nvim/init.vim<CR>

"""""""""""""""""""Plugins mappings"""""""""""""
" GOYO
  map <leader>g :Goyo \| set linebreak<CR>

" VimWiki
  let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" EasyMotion
  map , <Plug>(easymotion-prefix)

" fzf
  command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
    \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
    \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
    \   <bang>0)

  let g:fzf_preview_window = 'right:60%'

  nnoremap <C-p> :Files<Cr>
  nnoremap <C-t> :call fzf#vim#tags("'" . expand('<cword>'))<CR>
  nnoremap <C-g> :Rg<CR>
