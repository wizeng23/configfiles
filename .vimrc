"vundle
set nocompatible
filetype off
if filereadable($HOME.'/.vim/bundle/Vundle.vim/autoload/vundle.vim')
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'JazzCore/ctrlp-cmatcher'
    call vundle#end()

    "ctrlp settings
    let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
    let g:ctrlp_max_files = 0
    let g:ctrlp_show_hidden = 1
    let g:ctrlp_prompt_mappings = {
          \ 'AcceptSelection("e")': ['<c-t>'],
          \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
          \ }
    let g:ycm_autoclose_preview_window_after_completion = 1
endif
filetype plugin indent on

"visual stuff
syntax enable
set background=dark
colorscheme solarized
hi CursorColumn guibg=#333333

"basic stuff
set number
set backspace=indent,eol,start
set showmatch
set wildmenu
set wildmode=list:longest,full
set shortmess+=filmnrxoOtT
set showmode
set incsearch
set hlsearch
set ignorecase
set smartcase
set shell=zsh

set backup
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set undofile
set autowrite
set whichwrap=b,s,h,l,<,>,[,]
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd
set laststatus=2
set statusline=%m%r%h%w\ %l,%c%V%=%<%p%%[b%n][0x%B][len=%L][%{&ff}][%Y]\ %F
set list listchars=tab:»·,trail:·,nbsp:·

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
let g:python_use_two_spaces = 1

"mappings
imap jj <Esc>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
