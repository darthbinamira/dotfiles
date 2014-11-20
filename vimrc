execute pathogen#infect()
syntax on
filetype plugin indent on

let g:go_disable_autoinstall = 1

" Re-indent entire file
map <F7> mzgg=G`z<CR>

" Show line numbers
set number

" These settings below isn't Elastic Tabstops, but putting the link here for
" future reference -> http://nickgravgaard.com/elastictabstops/index.html
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

