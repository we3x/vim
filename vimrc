filetype off

" Pathogen initialization
call pathogen#infect()
call pathogen#helptags()

filetype indent plugin on
syntax enable

nnoremap <silent> <F2> :NERDTreeToggle<cr>
inoremap <silent> <F2> <ESC>:NERDTreeToggle<cr>
vnoremap <silent> <F2> <ESC>:NERDTreeToggle<cr>
