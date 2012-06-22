set nocompatible               " be iMproved

if !isdirectory(expand("/etc/vim/bundle/vundle/.git"))
  !git clone git://github.com/gmarik/vundle.git /etc/vim/bundle/vundle
endif

filetype off                   " must be off before Vundle has run

set runtimepath+=/etc/vim/bundle/vundle/

call vundle#rc("/etc/vim/bundle")

Bundle 'gmarik/vundle'
Bundle "git://github.com/tpope/vim-rails.git"
Bundle "git://github.com/vim-ruby/vim-ruby.git"
Bundle "git://github.com/pangloss/vim-javascript.git"
Bundle 'git://github.com/vim-scripts/DeleteTrailingWhitespace.git'
Bundle "git://github.com/altercation/vim-colors-solarized.git"
Bundle 'git://github.com/Lokaltog/vim-powerline.git'
Bundle "git://github.com/ervandew/supertab.git"
Bundle "git://github.com/mileszs/ack.vim.git"
Bundle "git://github.com/kien/ctrlp.vim.git"
Bundle "git://github.com/vim-scripts/jQuery.git"
Bundle "git://github.com/tpope/vim-fugitive"
Bundle "git://github.com/sjl/gundo.vim.git"

filetype plugin indent on     " and turn it back on!

" Load plugins that ship with Vim {{{1
runtime macros/matchit.vim
runtime ftplugin/man.vim
