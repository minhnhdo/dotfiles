scriptencoding utf-8
set encoding=utf-8

" for vundle
set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'
" original repos on github
Plugin 'airblade/vim-gitgutter'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'farseer90718/vim-taskwarrior'
Plugin 'fatih/vim-go'
Plugin 'guns/vim-clojure-static'
Plugin 'honza/vim-snippets'
Plugin 'idris-hackers/idris-vim'
Plugin 'kien/tabman.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'kovisoft/paredit'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'marijnh/tern_for_vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'powerman/vim-plugin-AnsiEsc'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'Shougo/vimproc.vim'
Plugin 'tbabej/taskwiki'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vimwiki/vimwiki'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rust-lang/rust.vim'

let g:vimwiki_list = [{'path': expand('$PROJECT_HOME/notebooks/'), 'auto_tags': 1}]
let g:taskwiki_disable_concealcursor = 'yes'

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

let mapleader = ","
let maplocalleader = ",,"

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:syntastic_always_populate_loc_list = 1

let g:ycm_global_ycm_extra_conf = expand('$PROJECT_HOME/dotfiles/ycm_extra_conf.py')
let g:ycm_extra_conf_globlist = [ expand('$PROJECT_HOME/dotfiles')
                              \ , '!~/'
                              \ ]
let g:ycm_semantic_triggers = { 'haskell': ['.', 'LANGUAGE ', '(', 'import '
                                         \ , ', ' ]
                            \ }
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_rust_src_path = expand('$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/')

let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-s-j>"
let g:UltiSnipsSnippetDirectories = ['UltiSnips']

nmap <leader>T :GhcModTypeInsert<CR>
nmap <leader>t :GhcModType<CR>
nmap <leader>F :GhcModSplitFunCase<CR>
nmap <leader>f :GhcModSigCodegen<CR>

nmap <leader>e :NERDTreeToggle<CR>

nmap <leader>q :nohlsearch<CR>

" reload current buffer
nmap <C-e> :e%<CR>

" movements between buffers
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" remove traling whitespaces
nmap <leader>s :%s/\s\+$//g<CR>

nnoremap <F3> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F8> :TagbarToggle<CR>

" don't outdent hashes
inoremap # #

" required for vundle
filetype plugin indent on

set rtp+=$HOME/.vim/bundle/neco-ghc/

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

autocmd FileType c,go setlocal shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab
autocmd FileType vimwiki,md,rst,text setlocal spell

syntax enable
