"My VimRc file

set nocompatible              
filetype off             

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Core Plugins 

" vim main plugins
Plugin 'sjl/gundo.vim'
Plugin 'bling/vim-airline'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'rking/ag.vim'
Plugin 'edsono/vim-matchit'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'

"Languages 

Plugin 'lrvick/Conque-Shell.git'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'ahayman/vim-nodejs-complete.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'flazz/vim-colorschemes.git'
Plugin 'vim-scripts/tComment'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'moll/vim-node'
Plugin 'walm/jshint.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'sidorares/node-vim-debugger'
Plugin 'mmozuras/snipmate-mocha'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            

filetype plugin indent on   
set autoindent 
set number
syntax enable
colorscheme monokai 
"session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession 
nnoremap <leader>ss :SaveSession 
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

""""""""""""""""""""""""""""""""
"
" SETTINGS & KEYBINDINGS
"
""""""""""""""""""""""""""""""""
set write
set expandtab
set smarttab
"set shiftwidth=4
"set softtabstop=4
"set tabstop=4
set autoindent
set ruler
set hidden
set ignorecase
set smartcase
set showmatch
set incsearch
set hls
set relativenumber
set ls=2
set cursorline
set nowrap
set backspace=indent,eol,start
set shell=/bin/bash
set completeopt -=preview
set textwidth=100
set wildmenu
set ttyfast
set noshowmode
set cmdheight=1
" set autoread

" backup/persistance settings

if isdirectory($HOME . '/.vim/.tmp') == 0
          :silent !mkdir -m 700 -p ~/.vim/.tmp > /dev/null 2>&1
endif
set backupdir=~/.vim/.tmp ",~/.local/tmp/vim,/var/tmp,/tmp,
set directory=~/.vim/.tmp ",~/.local/tmp/vim,/var/tmp,/tmp,
set noswapfile
" backup/persistance settings
" persist (g)undo tree between sessions
if isdirectory($HOME . '/.vim/undo') == 0
            :silent !mkdir -m 700 -p ~/.vim/undo > /dev/null 2>&1                                                                
endif
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
"
"""
"""


"Leader Key
let mapleader=","

"CtrlP Config
let g:ctrlp_map = "<c-p>"
nnoremap <leader>t :CtrlPMRU<CR>
nnoremap <leader>bp :CtrlPBuffer<CR>

"NERD Tree config
"
nnoremap <leader>1 :GundoToggle<CR>
set pastetoggle=<leader>2
nnoremap <leader>5 :NERDTreeToggle<CR>



" intellij style autocomplete shortcut

inoremap <C-@> <C-x><C-o>
inoremap <C-Space> <C-x><C-o>

"Map window movements
"
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

"Map Tab Shortcuts
"
nnoremap <S-h> gT
nnoremap <S-l> gt

" Always open file in separate tab
"
:au BufAdd,BufNewFile,BufRead * nested tab sball

