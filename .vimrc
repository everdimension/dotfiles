" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitly to make our position clear!
set nocompatible

" Syntax stuff
filetype plugin indent on
syntax on
set tabstop=4

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'everdimension/nova-vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'bronson/vim-trailing-whitespace'
" Plug 'mxw/vim-jsx'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'yuttie/comfortable-motion.vim'
" Plug 'SirVer/ultisnips'
" Plug 'ryanoasis/vim-devicons'
Plug 'isRuslan/vim-es6'
Plug 'tomasiser/vim-code-dark'
" Plug 'othree/yajs.vim'
" Plug 'pangloss/vim-javascript'
" Plug 'jelera/vim-javascript-syntax'

" if has('nvim')
"   Plug 'Soares/base16.nvim'
" endif

call plug#end()

" let g:jsx_ext_required = 0
autocmd Colorscheme * highlight FoldColumn guifg=bg guibg=bg
autocmd Colorscheme * highlight LineNr guifg=grey guibg=bg

" CtrlP plugin
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Ultisnips plugin
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" colorscheme gruvbox
" colorscheme nova
let $c = "base16-tomorrow-night"
" let $c = "codedark"
if has('nvim')
  set termguicolors
  colorscheme $c
else
  colorscheme elflord
endif


set background=dark
set guifont=Monaco:h16

highlight Normal guibg=none

" let mapleader = "\<Space>"

set relativenumber
set number

set autoindent           " Indent according to previous line
set smartindent
set expandtab            " Use spaces instead of tabs
set softtabstop =2       " Tab key indents by 2 spaces
set shiftwidth =2        " >> indents by 2 spaces
set visualbell           " no sounds
set history=100

set backspace =indent,eol,start " Make backspace work as you would expect
set hidden               " Switch between buffers without having to save first
" set laststatus =2        " Always show statusline
" set display =lastline    " Show as

" set showmode               " Show current mode in command-line
" set showcmd                " Show already typed keys when more are expected

set incsearch              " Highlight while searching with / or ?
nnoremap <silent> <esc> :noh<cr><esc>
" set hlsearch               " Keep matches highlighted
"
" highlight clear LineNr
" highlight LineNr guifg=grey

" set ttyfast                " Faster redrawing
" set lazyredraw             " Only redraw when necessary

" set splitbelow             " Open new windows below the current window
set splitright             " Open new windows right of the current window

set nocursorline             " Find the current line quickly
" set wrapscan               " Searches wrap around end-of-file
set report =0              " Always report changed lines
set synmaxcol =200           " Only highlight the first 200 columns

map <leader>rr :source ~/.vimrc<CR>
map <leader>z :q<CR>
imap <expr> <C-e> emmet#expandAbbrIntelligent("\<tab>")

" map <leader>ne :NERDTreeFind<CR>
" map <leader>ne :NERDTreeFind<CR>
map <M-shift-pipe> :NERDTreeFind<CR>
map <M-backslash> :NERDTreeToggle<CR>

" META key shortcuts
" cmnd+s to save
map <M-s> :w<CR>
imap <M-s> <ESC>:w<CR>a

" cmnd+d to search
map <M-d> <kMultiply>
map <D-d> <kMultiply>

map <M-c> "+y
map <M-C> :Commentary<CR>
map <D-/> :Commentary<CR>

" easily jump to next windows
map <leader>h <C-W>h
map <leader>l <C-W>l
map <leader>j <C-W>j
map <leader>k <C-W>k

map <C-w>b :bn<CR>

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

let $v = $HOME.'/.vim'

" set backup
set backupext   =-vimbackup
set backupskip  =
set undofile
set updatecount =100
if has('nvim')
  " set backupdir  -=.
  set shada       ='100
else
  set backupdir   =$v/files/backup
  set directory   =$v/files/swap//
  set undodir     =$v/files/undo
  set viewdir     =$v/files/view
  set viminfo     ='100,n$v/files/info/viminfo
endif


set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (%l,\ %c)\

