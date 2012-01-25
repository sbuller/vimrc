"prep pathogen
call pathogen#runtime_append_all_bundles()
"reload filetype plugins (in case pathogen has added new ones)
filetype off
filetype plugin indent on

source ~/.vim/colemak.vim
"source ~/.vim/haskell.vim

au BufRead,BufNewFile *.dats set filetype=ats
au BufRead,BufNewFile *.sats set filetype=ats
au! Syntax ats source ~/.vim/syntax/ats.vim

au BufRead,BufNewFile *.less set filetype=less
au! Syntax less source ~/.vim/syntax/less.vim

