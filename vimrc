set shell=/bin/bash

if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
NeoBundle 'Shougo/vimproc', {
 \ 'build' : {
 \     'windows' : 'make -f make_mingw32.mak',
 \     'cygwin' : 'make -f make_cygwin.mak',
 \     'mac' : 'make -f make_mac.mak',
 \     'unix' : 'make -f make_unix.mak',
 \    },
 \ }

NeoBundle 'scrooloose/nerdtree'

NeoBundle 'SirVer/ultisnips'
NeoBundle 'bling/vim-airline'
NeoBundle 'baskerville/bubblegum'
NeoBundle 'godlygeek/tabular'
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'dag/vim-fish'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'edsono/vim-matchit'

NeoBundle 'vim-scripts/L9'
NeoBundle 'vim-scripts/FuzzyFinder'

NeoBundle 'ervandew/ag'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'klen/python-mode'
NeoBundle 'ivanov/vim-ipython'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'farseer90718/vim-taskwarrior'
NeoBundle 'vim-scripts/apachelogs.vim'



filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck
