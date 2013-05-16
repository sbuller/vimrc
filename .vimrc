set nocompatible
filetype off
"source ~/.vim/bundles.vim
call pathogen#infect()

" Display {{{
set t_Co=256
set wrap
set colorcolumn=80
set relativenumber
set lazyredraw		" don't redraw screen while executing macros/mappings
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set hlsearch		" highlight search patterns
set background=dark
"}}}

" Preferred tab style {{{
set shiftwidth=3
set tabstop=3
set noexpandtab
set cinoptions=g0
"}}}

" Show non-printing characters, and dim them {{{
set listchars=tab:»▸,eol:¬
set list
hi NonText ctermfg=240
hi SpecialKey ctermfg=240
"}}}

" Auto-formatting of text {{{
"set textwidth=72
set formatoptions=qrn1
"}}}

" key customizations {{{
let mapleader = ","
nnoremap <leader>r :setlocal relativenumber<CR>
nnoremap <leader>n :setlocal number<CR>
nnoremap <leader><C-l> :redraw!<CR>
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader><tab> :tabn<cr>
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>z z
nnoremap <leader>a <C-a>
nnoremap <leader>q :q<cr>

" Window handling: <C-w> is now <leader>w {{{
nnoremap <leader>w <C-w>|xnoremap <leader>w <C-w>|
" <leader>w<leader>w opens a new window
nnoremap <leader>w<leader>w <C-w>n|xnoremap <leader>w<leader>w <C-w>n|
nnoremap <leader>wn <C-w>h|xnoremap <leader>wn <C-w>h| 
nnoremap <leader>wu <C-w>k|xnoremap <leader>wu <C-w>k| 
nnoremap <leader>we <C-w>j|xnoremap <leader>we <C-w>j| 
nnoremap <leader>wi <C-w>l|xnoremap <leader>wi <C-w>l| 
"}}}

inoremap jj <ESC>
"}}}

" plugin specific stuff {{{
au BufRead,BufNewFile *.dats set filetype=ats
au BufRead,BufNewFile *.sats set filetype=ats
au! Syntax ats source ~/.vim/syntax/ats.vim

au BufRead,BufNewFile *.less set filetype=less
au! Syntax less source ~/.vim/syntax/less.vim

au BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala
"}}}

" Misc settings (Mostly from colemak.vim) {{{
set nostartofline	" keep cursor in the same column if possible
set whichwrap=b,s,[,],<,>,h,l " allow cursor to wrap between lines
set virtualedit=block	" allow virtual editing in Visual block mode
set scrolloff=1		" minimal number of screen lines to keep above and below the cursor
set incsearch		" enable incremental search
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set winaltkeys=no	" allow mapping of alt (meta) key shortcuts
set smartcase		" ignore case when the pattern contains lowercase letters only

syntax on		" enable syntax highlighting
"}}}

" NERDTree Remappings {{{
let NERDTreeMapOpenSplit='<localleader>i'
let NERDTreeMapUpdir='<localleader>u'
let NERDTreeMapOpenExpl='<localleader>e'
let NERDTreeMapActivateNode='<Space>'
"}}}

source ~/.vim/colemak.vim

filetype plugin indent on

" vim: foldmethod=marker
