au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org call org#SetOrgFileType()

" for vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" original repos on github
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/powerline'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
" Bundle 'vim-scripts/slimv.vim'
Bundle 'hsitz/VimOrganizer'

" required for vundle
filetype plugin indent on

" too many write events
set nobackup
set nowritebackup
set noswapfile

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

colorscheme solarized
if has("gui_running")
    set background=light
    set guifont=Monospace\ 11
else
    set background=dark
end

" help slimv find swank
" let g:slimv_swank_cmd = '! xfce4-terminal --command="sbcl --load /home/minh/quicklisp/dists/quicklisp/software/slime-20130312-cvs/start-swank.lisp" &'
" matching color parens
" let g:slimv_rainbow = 1
" do not put the closing paren on a new line
" let g:paredit_electric_return = 0

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

"nmap j gj
"nmap k gk
nmap <leader>e :NERDTreeToggle<Enter>
nmap <leader>q :nohlsearch<Enter>
nmap <C-e> :e#<Enter>
nmap <C-n> :bnext<Enter>
nmap <C-p> :bprev<Enter>
