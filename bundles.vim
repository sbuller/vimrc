filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Interfaces
"Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Conque-Shell'

" Interactive
"Bundle 'docunext/closetag.vim'
"Bundle 'majutsushi/tagbar'
"Bundle 'Raimondi/delimitMate'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tcomment_vim'

" Colour Scheme
Bundle 'altercation/vim-colors-solarized'

" Language Definitions
Bundle 'wavded/vim-stylus'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jnwhiteh/vim-golang'
Bundle 'derekwyatt/vim-scala'

filetype plugin indent on

" Brief help
" Bundles can be imported from github
"   Bundle 'user/repo'
" or from vim-scripts
"   Bundle 'name'
" or from a git repo
"   Bundle 'git://...'
" :BundleList          - list configured bundles
" :BundleInstall       - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command ar not allowed
