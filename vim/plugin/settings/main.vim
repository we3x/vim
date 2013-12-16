set autoindent
set autoread
set expandtab
set history=500
set magic
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
set incsearch
set visualbell t_vb=
set showmode
set pastetoggle=<F3> " Toggle paste on F3
set relativenumber

nnoremap NT :tabe <cr>
nnoremap ZW :w <cr>
nnoremap H :tabp <cr>
nnoremap L :tabn <cr>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
map <leader>y "+yy<cr>
map <leader>p "+p
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <F3> :set invpaste paste?<cr>

syntax on

colorscheme molokai
