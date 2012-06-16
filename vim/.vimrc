" this must be first, because it changes other options as a side effect
set nocompatible

" --> [vundle]

" required by Vundle
filetype off
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'


" --> [generals]
" enable filetype plugins
filetype plugin on
filetype indent on

" set to auto read when a file is changed from the outside
set autoread

" autowrite buffer before executing most commands
set autowrite

" have the mouse enabled all the time:
set mouse=a

" set mapleader
let mapleader = ","
let g:mapleader = ","

" fast saving
nmap <leader>w :w!<cr>

" set rational tabs & co.
set expandtab
set softtabstop=4
set shiftwidth=4

" persistent undo <3
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" keep x lines of command line history
set history=350

" no backups
set nobackup
set noswapfile

" --> [visuals]
"
" show the cursor position all the time
set ruler

if has("gui_running")
    set guioptions=
    set guifont=Menlo:h18
    set lines=40
    set columns=100
endif

" highlight syntax
syntax on

" show line nuber
set number

" laeve some space when moving vertical
set scrolloff=5

" no wrapping of long lines
set nowrap

" always show statusline
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" set some nice colors
set t_Co=256
colorscheme mustang

" --> [others]
"
" display incomplete commands
set showcmd

" do incremental searching
set incsearch
set ignorecase
set hlsearch

" don't use Ex mode, use Q for formatting
map Q gq

" no sound on errors
set noerrorbells
set novisualbell

" set some magic
set magic

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" set nice 'list' symbols (to actualy see them use :list)
set list
set listchars=tab:→·,trail:·,eol:↩

" set nice completion menu
set wildmenu
set wildmode=longest:full,full
set completeopt=longest,menu

" --> [mappings]
"
" prompt for spelllanguage and turn spellchecker on
nmap <F7> :setlocal spell spelllang=


" use F1 for something useful
map <F1> <esc>
imap <F1> <esc>

" turn off highlight
map <F6> :noh<CR>

" wrap/nowrap
map <F5> :set wrap!<CR>


" --> [autocommands]
"
au FileType text setlocal textwidth=72
au FileType ruby setlocal sts=2 sw=2 ts=2

" when editing a file, always jump to the last known cursor position.
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ 	exe "normal g`\"" |
\ endif


