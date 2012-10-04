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

let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
let g:UltiSnipsDontReverseSearchPath="1"

nnoremap nt :tabe <CR>
nnoremap ZW :w <CR>
nnoremap H :tabp <CR>
nnoremap L :tabn <CR>
nnoremap <Leader>i :set smartindent!<CR>:set autoindent!<CR>
nnoremap <Leader>c :set ignorecase!<CR>
nnoremap <Leader>g :Gist<CR>
nnoremap <silent> <F2> :NERDTreeToggle<cr>
inoremap <silent> <F2> <ESC>:NERDTreeToggle<cr>
vnoremap <silent> <F2> <ESC>:NERDTreeToggle<cr>
map <leader>t :FuzzyFinderTextMate<CR>
map <leader>y "+yy<CR>
map <leader>p "*p

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\t\|\s\+\%#\@<!$/

autocmd InsertLeave * redraw!
autocmd BufWritePre * :%s/\s\+$//e

syntax on
