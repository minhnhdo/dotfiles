if !exists('g:vscode')
  scriptencoding utf-8
  set encoding=utf-8

  call plug#begin()

  Plug 'NLKNguyen/papercolor-theme'
  Plug 'Shougo/vimproc.vim', { 'do': 'make' }
  Plug 'SirVer/ultisnips'
  Plug 'airblade/vim-gitgutter'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'eagletmt/ghcmod-vim'
  Plug 'eagletmt/neco-ghc'
  Plug 'elixir-tools/elixir-tools.nvim'
  Plug 'fatih/vim-go'
  Plug 'honza/vim-snippets'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'idris-hackers/idris-vim'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'kien/tabman.vim'
  Plug 'kovisoft/paredit'
  Plug 'majutsushi/tagbar'
  Plug 'marijnh/tern_for_vim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': 'TSUpdate' }
  Plug 'powerman/vim-plugin-AnsiEsc'
  Plug 'quangnguyen30192/cmp-nvim-ultisnips'
  Plug 'rust-lang/rust.vim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/syntastic'
  Plug 'tpope/vim-classpath'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fireplace'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-speeddating'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  call plug#end()

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

  let g:python_host_prog = expand('/usr/bin/python2')
  let g:python3_host_prog = expand('$HOME/.pyenv/shims/python3')

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

  " make YCM compatible with UltiSnips (using supertab)
  let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
  let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
  let g:SuperTabDefaultCompletionType = '<C-n>'

  " better key bindings for UltiSnipsExpandTrigger
  let g:UltiSnipsExpandTrigger = "<tab>"
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
  let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
  let g:UltiSnipsSnippetDirectories = ['UltiSnips']

  let g:rustfmt_autosave = 1

  nmap <leader>T :GhcModTypeInsert<CR>
  nmap <leader>t :GhcModType<CR>
  nmap <leader>F :GhcModSplitFunCase<CR>
  nmap <leader>f :GhcModSigCodegen<CR>

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
  " set relativenumber
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
end
