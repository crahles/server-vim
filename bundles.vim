set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/etc/vim/bundle/Vundle.vim
call vundle#begin('/etc/vim/bundle')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'git://github.com/mileszs/ack.vim.git'
Plugin 'git://github.com/kien/ctrlp.vim.git'
Plugin 'git://github.com/bling/vim-airline.git'
Plugin 'git://github.com/ervandew/supertab.git'
Plugin 'git://github.com/vim-scripts/DeleteTrailingWhitespace.git'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'git://github.com/tomtom/tcomment_vim.git'
Plugin 'git://github.com/jinfield/vim-nginx.git'
Plugin 'git://github.com/tpope/vim-rails.git'
Plugin 'git://github.com/tpope/vim-haml.git'
Plugin 'git://github.com/sjl/gundo.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on     " and turn it back on!

" Load plugins that ship with Vim {{{1
runtime macros/matchit.vim
runtime ftplugin/man.vim
