" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible
syntax on

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'

call plug#end()

colorscheme gruvbox
set background=dark
set guifont=Monaco:h14

set relativenumber
filetype plugin indent on

set autoindent           " Indent according to previous line
set expandtab            " Use spaces instead of tabs
set softtabstop =2       " Tab key indents by 2 spaces
set shiftwidth =2        " >> indents by 2 spaces

set backspace =indent,eol,start " Make backspace work as you would expect
set hidden               " Switch between buffers without having to save first
" set laststatus =2        " Always show statusline
" set display =lastline    " Show as

" set showmode               " Show current mode in command-line
" set showcmd                " Show already typed keys when more are expected

set incsearch              " Highlight while searching with / or ?
" set hlsearch               " Keep matches highlighted

" set ttyfast                " Faster redrawing
" set lazyredraw             " Only redraw when necessary

set splitbelow             " Open new windows below the current window
set splitright             " Open new windows right of the current window

set cursorline             " Find the current line quickly
" set wrapscan               " Searches wrap around end-of-file
" set report =0              " Always report changed lines
set synmaxcol =200           " Only highlight the first 200 columns

map <leader>rr :source ~/.vimrc<CR>

" set list                     " Show non-printable characters
" if has('multi_byte') && &encoding ==# 'utf-8'
"   let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
" else
"   let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
" endif


" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  set shell=/bin/bash
endif


" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo
