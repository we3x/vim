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
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'dag/vim-fish'
NeoBundle 'tomtom/tcomment_vim'

NeoBundle 'vim-scripts/L9'
NeoBundle 'vim-scripts/FuzzyFinder'

NeoBundle 'rking/ag.vim'
NeoBundle 'mekanix/Vim-Autoclose'
NeoBundle 'klen/python-mode'
NeoBundle 'ivanov/vim-ipython'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'vim-scripts/apachelogs.vim'
NeoBundle 'vim-scripts/vim-multiedit'
NeoBundle 'scrooloose/syntastic'

NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'burnettk/vim-angular'
NeoBundle 'pangloss/vim-javascript'



filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck
