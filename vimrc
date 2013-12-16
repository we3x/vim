set nocompatible               " be iMproved
filetype off                   " required!

filetype plugin indent on     " required!
filetype plugin on

set shell=/bin/bash

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'git.zip'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'sethbc/fuzzyfinder_textmate'
Bundle 'SirVer/ultisnips'
Bundle 'rodjek/vim-puppet'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
Bundle 'godlygeek/tabular'
Bundle 'mjbrownie/vim-htmldjango_omnicomplete'
Bundle 'vim-scripts/taglist.vim'
Bundle 'Liberationtech/taskpacifist'
Bundle 'framallo/taskwarrior.vim'
Bundle 'vim-scripts/httplog'
Bundle 'plasticboy/vim-markdown'
Bundle 'vim-scripts/lighttpd-syntax'
Bundle 'BufOnly.vim'
Bundle 'tmatilai/gitolite.vim'
Bundle 'aliva/vim-fish'
Bundle 'tomasr/molokai'
Bundle 'YankRing.vim'
Bundle 'paradigm/vim-multicursor'
Bundle 'Osse/double-tap'
Bundle 'rking/ag.vim'
