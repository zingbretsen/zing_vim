set nocompatible

" Vim pathogen for easier plugin installation
execute pathogen#infect()

set grepprg=grep\ -nH\ $*

" Syntax highlighting
syntax enable
syntax on
filetype on
filetype plugin on

" Underlines current line
set cursorline

" Better case searching
set ignorecase
set smartcase

set autoindent
filetype plugin indent on

" search will center on the line it's found in.
nnoremap N Nzz
nnoremap n nzz

" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;

" In visual mode as well
vnoremap ; :
vnoremap : ;

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Everyone one loves line numbers, right?
set nu

" Get out of insert mode with jj
inoremap jj <Esc>

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>k
nnoremap <silent> zk O<Esc>j

" Y now yanks from current pos thru the end of the line
" Ignoring newline at the end
nnoremap <silent> Y y$

vnoremap // "1y/<C-R>1<CR>

inoremap ;w <Esc>:w

" Code folding
set foldenable
set foldlevelstart=10
set foldmethod=indent
nnoremap <space> za

set showcmd

" set cpoptions+=$

colorscheme elflord

let g:closetag_html_style=1
source ~/.vim/bundle/closetag/closetag.vim

" Uses tabular plugin to align by = and :
nnoremap <Tab>   :Tab /=<CR>:Tab /:<CR>
vnoremap <Tab>   :Tab /=<CR>:Tab /:<CR>
