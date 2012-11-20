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

let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
let g:UltiSnipsDontReverseSearchPath="1"

nnoremap nt :tabe <CR>
nnoremap ZW :w <CR>
nnoremap H :tabp <CR>
nnoremap L :tabn <CR>
nnoremap <LEADER>i :set smartindent!<CR>:set autoindent!<CR>
nnoremap <LEADER>c :set ignorecase!<CR>
nnoremap <LEADER>g :Gist<CR>
nnoremap <SILENT> <F2> :NERDTreeToggle<CR>
inoremap <SILENT> <F2> <ESC>:NERDTreeToggle<CR>
vnoremap <SILENT> <F2> <ESC>:NERDTreeToggle<CR>
map <LEADER>t :FuzzyFinderTextMate<CR>
map <LEADER>y "+yy<CR>
map <LEADER>p "+p
map <BS> X
nnoremap <LEADER>bo :BufOnly<CR>
nnoremap <LEADER>h :set hlsearch!<CR>

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\t\|\s\+\%#\@<!$/

autocmd InsertLeave * redraw!
autocmd BufWritePre * :%s/\s\+$//e
au BufRead *.log* setf httplog
au BufRead *.err* setf httplog
au BufNewFile,BufRead /etc/lighttpd/* set filetype=lighttpd

syntax on
color koehler


inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

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
