" Install new bundles with 'vim +BundleInstall +qall'
set nocompatible               " be iMproved
filetype off                   " required!

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

filetype plugin indent on     " required!
filetype plugin on

set autoindent
set autoread
set expandtab
set history=500
set magic
set number
set shiftwidth=4
set smartindent
set softtabstop=4
set tabstop=4
set tw=0
set formatoptions=l
set lbr
set mouse=a
set wildmenu                    " make tab completion for files/buffers act like bash
set wildmode=list:full          " show a list when pressing tab and complete
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set bs=2
set noswapfile
set hlsearch
set shell=/bin/bash
set incsearch

let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
let g:UltiSnipsDontReverseSearchPath="1"

nnoremap nt :tabe <cr>
nnoremap ZW :w <cr>
nnoremap H :tabp <cr>
nnoremap L :tabn <cr>
nnoremap <leader>i :set smartindent!<cr>:set autoindent!<cr>
nnoremap <leader>c :set ignorecase!<cr>
nnoremap <leader>g :Gist<cr>
nnoremap <f2> :NERDTreeToggle<cr>
inoremap <f2> <esc>:NERDTreeToggle<cr>
vnoremap <f2> <esc>:NERDTreeToggle<cr>
map <leader>t :FuzzyFinderTextMate<cr>
map <leader>y "+yy<cr>
map <leader>p "+p
map <bs> X
nnoremap <leader>bo :BufOnly<cr>
nnoremap <leader>h :set hlsearch!<cr>
nnoremap <leader>n :set number!<cr>
nnoremap <leader>m :NERDTreeFocus<cr>
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\t\|\s\+\%#\@<!$/

autocmd InsertLeave * redraw!
autocmd BufWritePre * :%s/\s\+$//e

au BufRead *.log* setf httplog
au BufRead *.err* setf httplog
au BufNewFile,BufRead /etc/lighttpd/* set filetype=lighttpd

syntax on
color koehler


inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<cr>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

colorscheme molokai
