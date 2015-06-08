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

" ARROW KEYS ARE UNACCEPTABLE
map <Left> :echo "Use h instead of the Left Arrow!"<cr>
map <Right> :echo "Use l instead of the Right Arrow!"<cr>
map <Up> :echo "Use k instead of the Up Arrow!"<cr>
map <Down> :echo "Use j instead of the Down Arrow!"<cr>

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 smarttab softtabstop=4 autoindent

function! DoPrettyXML()
  let l:origft = &ft 
  set ft= 
  silent %!xmllint --format -
  1
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()
