set nocompatible
filetype off
scriptencoding utf-8
set encoding=utf-8

if v:version >= 801
	set termwinkey=<C-R>
	tnoremap n <C-W>h
	tnoremap e <C-W>k
	tnoremap u <C-W>j
	tnoremap i <C-W>l
end

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
"let g:js_context_colors_jsx = 1
"let g:js_context_colors_allow_jsx_syntax = 1

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
set laststatus=2


" Powerline stuff
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"set laststatus=2 " Always display the statusline in all windows
"set noshowmode   " Hide the default mode text (e.g. -- INSERT -- below the statusline)
"}}}

" Preferred tab style {{{
set shiftwidth=3
set tabstop=3
set noexpandtab
set cinoptions=g0
"}}}

" Show non-printing characters, and dim them {{{
set listchars=tab:»▸,eol:¬
"set listchars=tab:»-,eol:¬
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

" Increment a number
nnoremap <leader>a <C-a>
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>n :setlocal number<CR>
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>r :setlocal relativenumber<CR>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ut :UndotreeToggle<cr>

" wrap words
nnoremap <leader>"r ciw"<C-r>""<Esc>
nnoremap <leader>'r ciw'<C-r>"'<Esc>
nnoremap <leader>(r ciw(<C-r>")<Esc>
nnoremap <leader><r ciw<<C-r>"><Esc>

" Start a web server in the current directory
"nnoremap <leader>1 :!nws<cr>
" provide access to z for folding
nnoremap <leader>z z
nnoremap <leader><C-l> :redraw!<CR>
nnoremap <leader><tab> :tabn<cr>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt

nnoremap <leader>el :ElmEvalLine<CR>
vnoremap <leader>es :<C-u>ElmEvalSelection<CR>
nnoremap <leader>em :ElmMakeCurrentFile<CR>
nnoremap <leader>ex :au! BufWritePost *.elm<CR>

nnoremap <leader>m :make!<CR>

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
:au BufWritePost *.elm ElmMakeFile("Main.elm")
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

autocmd BufRead,BufNewFile package.json setlocal et
"}}}

" NERDTree Remappings {{{

set autochdir " Working dir always set based on active buffer
let NERDTreeChDirMode=2 " ...?
let NERDTreeMapOpenSplit='<localleader>i'
let NERDTreeMapUpdir='<localleader>u'
let NERDTreeMapOpenExpl='<localleader>e'
let NERDTreeMapActivateNode='<Space>'
"}}}

source ~/.vim/colemak.vim

filetype plugin indent on

" vim: foldmethod=marker
