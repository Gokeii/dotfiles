"-------------------------------------------------------------------------------
" GUI thingy
"-------------------------------------------------------------------------------
set guioptions=acg              " Set the gui options the way I like.
set hlsearch                    " Enable search highlighting.
set title                       " Set title of the window to file name and path.
set laststatus=2                " Tell VIM to always put a status line in.
set number                      " Show line number.
set ruler                       " Show indicators of rows and columns.
set showmode                    " Show the current mode.
set showcmd                     " Show current command in the lower right corner.

syntax on                       " Switch on syntax highlighting.

colorscheme desert              " Set the color scheme.

"-------------------------------------------------------------------------------
" Global Stuff
"-------------------------------------------------------------------------------
" Make Escape more easier... Not all the keyboards are HHKB.
inoremap jk <ESC>

filetype on                     " Set filetype stuff to on.
filetype plugin on
filetype indent on

set wildmenu                    " Make the command-line completion better.
set wildmode=list:longest,full

set incsearch                   " Do incremental searching.

set hidden                      " Unsaved buffers can be put in the background.

set encoding=utf-8              " In case there are Chinese characters.

set scrolloff=4                 " Keep the cursor 4 lines from edge when scrolling.
set scrolljump=3                " Set scrolling speed to 3 lines when cursor leaves current screen.

set tabstop=4                   " Tabstops are 4 spaces.
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

set backspace=indent,eol,start  " Allow backspacing over indent, eol, and the start of an insert.

set textwidth=0                 " Disable text width limit.

set autoread                    " Automatically read a file that has changed on disk.
