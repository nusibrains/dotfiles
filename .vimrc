" .vimrc, Vim configuration file


set nocompatible            " required by Vundle
filetype off                " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" """"""""""""""""""""""""""""""""""""""""""" Specify plugins here

" General
" Plugin 'vim-syntastic/syntastic'          " syntax checking
" Plugin 'tmhedberg/SimplyFold'
" Plugin 'kien/ctrlp.vim'                   " fuzzy finder
" Git-related
" Plugin 'tpope/vim-fugitive'

" Language-specific plugins
" Plugin 'nvie/vim-flake8'                  " Python flake-8
" Plugin 'vim-scripts/indentpython.vim'     " DEPRECATED
" Plugin 'fatih/vim-go'                     " Go development
" Plugin 'Vimjas/vim-python-pep8-indent'

" Color schemes; not set until "colorscheme" specified
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'                 " low-contrast color scheme
Plugin 'gmarik/ingretu'
Plugin 'fxn/vim-monochrome'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'sickill/vim-monokai'
Plugin 'sjl/badwolf'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline'

" """"""""""""""""""""""""""""""""""""""""""" End plugin specification

call vundle#end()            " required by Vundle
filetype plugin indent on    " required by VUndle

syntax on

" `:colo[rscheme] {name} searches 'runtimepath' for the file "colors/{name}.vim"
" example: `colo gruvbox`
" Note that these won't do much if you have a generic no-extension blank file open
:colo gruvbox

:set background=dark        " does not change background color, just tells Vim what background color looks like
:set autowrite
:set hlsearch               " search highlighting
:set incsearch              " incremental search
:set ignorecase
:set smartcase              " no ignore case when a search pattern has uppercase
:set antialias
:set number
:set ruler
:set showcmd                " shows last command entered at bottom right
:set cursorline             " highlight current line
:set showmatch              " highlight matching [{()}]

:set backspace=2            " Fix Delete (backspace) on Mac OS X
:set fileformat=unix
:set nowrap
:set encoding=utf-8
:set clipboard=unnamed      " give access to system clipboard

:set foldenable             " enable folding
:set foldmethod=indent      " folding type - fold based on indent level
:set foldlevel=10           " close deeply nested folds, most open by default
                            " a fold level of 99 would mean all folds always open"

" Global defaults.  These may be overriden by language-specific settings in
" ~/.vim/ftplugin/{language}.vim
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set textwidth=0
:set expandtab
:set autoindent
:set shiftround

" Emacs-style start of line / end of line navigation
nnoremap <silent> <C-a> ^
nnoremap <silent> <C-e> $
vnoremap <silent> <C-a> ^
vnoremap <silent> <C-e> $

nnoremap <space> za                     " Enable folding with spacebar
let g:SimpylFold_docstring_preview=1    " See docstrings for folded code

filetype indent on                      " load filetype-specific indent files
