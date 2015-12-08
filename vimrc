scriptencoding utf-8
set encoding=utf-8

" for vundle
set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'
" original repos on github
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'fatih/vim-go'
Plugin 'guns/vim-clojure-static'
Plugin 'honza/vim-snippets'
Plugin 'idris-hackers/idris-vim'
Plugin 'jceb/vim-orgmode'
Plugin 'kien/tabman.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'marijnh/tern_for_vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'Shougo/vimproc.vim'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/paredit.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rust-lang/rust.vim'

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


set t_Co=256
colorscheme PaperColor
if has("gui_running")
    set background=light
    set guifont=Monaco\ 11
else
    set background=dark
end

let g:syntastic_always_populate_loc_list = 1
let g:ycm_global_ycm_extra_conf = expand('$PROJECT_HOME/dotfiles/ycm_extra_conf.py')
let g:ycm_extra_conf_globlist = [ '~/Documents/Workplace/dotfiles'
                              \ , '!~/'
                              \ ]
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-s-j>"
let g:UltiSnipsSnippetDirectories = ['UltiSnips']

set rtp+=$HOME/.vim/bundle/powerline/powerline/bindings/vim
set rtp+=$HOME/.vim/bundle/neco-ghc/

let mapleader = ","
nmap <leader>T :GhcModTypeInsert<Enter>
nmap <leader>t :GhcModType<Enter>
nmap <leader>s :GhcModSplitFunCase<Enter>
nmap <leader>S :GhcModSigCodegen<Enter>
nmap <leader>e :NERDTreeToggle<Enter>
nmap <leader>q :nohlsearch<Enter>
nmap <C-e> :e#<Enter>
nmap <C-n> :bnext<Enter>
nmap <C-p> :bprev<Enter>
nnoremap <F3> :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_semantic_triggers = {'haskell': ['.', 'LANGUAGE ', '(', 'import '
                                        \ , ', ' ]}

" required for vundle
filetype plugin indent on

set colorcolumn=81
set cursorline

set fileencoding=utf-8

set matchpairs+=<:>
set list
set listchars=tab:•:,trail:•,extends:#,nbsp:•

set laststatus=2
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
