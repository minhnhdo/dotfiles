" for vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" original repos on github
" Bundle 'altercation/vim-colors-solarized'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'guns/vim-clojure-static'
Bundle 'kien/tabman.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Lokaltog/powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/vimproc'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/paredit.vim'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'wting/rust.vim'

" for rainbow_parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" .+12, on the left, black is changed to white
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'SeaGreen3'],
    \ ['white',       'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" highlight trailing whitespace
match ErrorMsg '\s\+$'

" for haskellmode
let g:haddock_browser="/usr/bin/firefox"

" colorscheme solarized
" if has("gui_running")
"     set background=light
"     set guifont=Monaco\ 11
" else
"     set background=dark
" end

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

let mapleader = ","
"nmap j gj
"nmap k gk
nmap <leader>e :NERDTreeToggle<Enter>
nmap <leader>q :nohlsearch<Enter>
nmap <C-e> :e#<Enter>
nmap <C-n> :bnext<Enter>
nmap <C-p> :bprev<Enter>

" required for vundle
filetype plugin indent on

set laststatus=2
set colorcolumn=80
set mouse=a
set number
set ruler
set showcmd
set hidden

set incsearch
set ignorecase
set smartcase
set hlsearch

set autoindent
set smartindent

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

syntax enable
