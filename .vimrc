let mapleader = ","
set wrap
set textwidth=72
set formatoptions=qrn1
set colorcolumn=80

"prep pathogen
call pathogen#runtime_append_all_bundles()
"reload filetype plugins (in case pathogen has added new ones)
filetype off
filetype plugin indent on

source ~/.vim/colemak.vim

au BufRead,BufNewFile *.dats set filetype=ats
au BufRead,BufNewFile *.sats set filetype=ats
au! Syntax ats source ~/.vim/syntax/ats.vim

au BufRead,BufNewFile *.less set filetype=less
au! Syntax less source ~/.vim/syntax/less.vim

inoremap jj <ESC>
set listchars=tab:»▸,eol:¬
set list

set shiftwidth=3
set tabstop=3
set noexpandtab

set relativenumber
nnoremap <leader>r :set relativenumber<CR>
nnoremap <leader>n :set number<CR>
