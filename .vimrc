set nocompatible

execute pathogen#infect()
filetype on
filetype plugin on
syntax enable
syntax on
set grepprg=grep\ -nH\ $*

set autoindent
filetype plugin indent on

" search will center on the line it's found in.
map N Nzz
map n nzz

" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;

" In visual mode as well
vnoremap ; :
vnoremap : ;

set nu

inoremap jj <Esc>

let g:clipbrdDefaultReg = '+'

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

nnoremap <space> za
set showcmd
set foldmethod=marker

set cpoptions+=$
