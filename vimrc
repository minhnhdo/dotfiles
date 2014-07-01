" for vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'
" original repos on github
" Plugin 'altercation/vim-colors-solarized'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'guns/vim-clojure-static'
Plugin 'kien/tabman.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Lokaltog/powerline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'marijnh/tern_for_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'Shougo/vimproc'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/paredit.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'wting/rust.vim'

" for rainbow_parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" .+12, on the left, black is changed to white
let g:rbpt_colorpairs = [ ['brown',       'RoyalBlue3']
                      \ , ['Darkblue',    'SeaGreen3']
                      \ , ['darkgray',    'DarkOrchid3']
                      \ , ['darkgreen',   'firebrick3']
                      \ , ['darkcyan',    'RoyalBlue3']
                      \ , ['darkred',     'SeaGreen3']
                      \ , ['darkmagenta', 'DarkOrchid3']
                      \ , ['brown',       'firebrick3']
                      \ , ['gray',        'RoyalBlue3']
                      \ , ['darkmagenta', 'SeaGreen3']
                      \ , ['white',       'DarkOrchid3']
                      \ , ['Darkblue',    'firebrick3']
                      \ , ['darkgreen',   'RoyalBlue3']
                      \ , ['darkcyan',    'SeaGreen3']
                      \ , ['darkred',     'DarkOrchid3']
                      \ , ['red',         'firebrick3']
                      \ ]

" for haskellmode
let g:haddock_browser="/usr/bin/firefox"

" colorscheme solarized
" if has("gui_running")
"     set background=light
"     set guifont=Monaco\ 11
" else
"     set background=dark
" end

let g:ycm_global_ycm_extra_conf = expand('$PROJECT_HOME/dotfiles/ycm_extra_conf.py')
let g:ycm_extra_conf_globlist = [ '~/Documents/Workplace/dotfiles'
                              \ , '!~/'
                              \ ]
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsSnippetDirectories = ['UltiSnips']

set rtp+=$HOME/.vim/bundle/powerline/powerline/bindings/vim

let mapleader = ","
nmap <leader>e :NERDTreeToggle<Enter>
nmap <leader>q :nohlsearch<Enter>
nmap <C-e> :e#<Enter>
nmap <C-n> :bnext<Enter>
nmap <C-p> :bprev<Enter>
nnoremap <F3> :YcmCompleter GoToDefinitionElseDeclaration<CR>

" required for vundle
filetype plugin indent on

set matchpairs+=<:>
set list
set listchars=tab:•:,trail:•,extends:#,nbsp:•

set laststatus=2
set textwidth=80
set colorcolumn=+1
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
set shiftwidth=2
set tabstop=2
set softtabstop=2

syntax enable
