"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------
set nocompatible                       " Get vundle up and running.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-surround'
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

"-------------------------------------------------------------------------------
" GUI thingy
"-------------------------------------------------------------------------------
if has("gui_running")
    colorscheme desert                 " Set the color scheme.
    if !exists("g:vimrcloaded")
        winpos 0 0
        set lines=999
        set columns=9999
        let g:vimrcloaded = 1
    endif
else
    colorscheme evening
endif

set guioptions=acg                     " Set the gui options the way I like.
set hlsearch                           " Enable search highlighting.
set title                              " Set title of the window to file name and path.
set laststatus=2                       " Tell VIM to always put a status line in.
set number                             " Show line number.
set ruler                              " Show indicators of rows and columns.
set showmode                           " Show the current mode.
set showcmd                            " Show current command in the lower right corner.

syntax on                              " Switch on syntax highlighting.


"-------------------------------------------------------------------------------
" Global Stuff
"-------------------------------------------------------------------------------
" Make Escape more easier... Not all the keyboards are HHKB.
inoremap jk <ESC>

filetype on                            " Set filetype stuff to on.
filetype plugin on
filetype indent on

set wildmenu                           " Make the command-line completion better.
set wildmode=list:longest,full

set incsearch                          " Do incremental searching.

set hidden                             " Unsaved buffers can be put in the background.

set encoding=utf-8                     " In case there are Chinese characters.

set scrolloff=4                        " Keep the cursor 4 lines from edge when scrolling.
set scrolljump=3                       " Set scrolling speed to 3 lines when cursor leaves current screen.

set tabstop=4                          " Tabstops are 4 spaces.
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

set backspace=indent,eol,start         " Allow backspacing over indent, eol, and the start of an insert.

set textwidth=0                        " Disable text width limit.

set autoread                           " Automatically read a file that has changed on disk.

set nobackup                           " Turn off to prevent spawning of ~ file.
set nowritebackup
set noswapfile

"-------------------------------------------------------------------------------
" Auto commands
"-------------------------------------------------------------------------------
augroup FixWindowPosition
    au!
    au GUIEnter * winpos 60 0
augroup END
