set nocompatible

filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jaredly/vim-debug'

call vundle#end()

autocmd BufNewFile,BufRead *.ts set syntax=typescript

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set splitbelow
set splitright
set ts=4
set expandtab
set tabstop=4
set shiftwidth=4


syntax on
