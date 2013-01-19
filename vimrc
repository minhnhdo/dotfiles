" too many write events
set nobackup
set nowritebackup
set noswapfile

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

filetype plugin indent on
syntax on

colorscheme solarized
if has("gui_running")
    set background=light
    set guifont=Monospace\ 12
else
    set background=dark
end

map <leader>n :NERDTreeToggle<Enter>
