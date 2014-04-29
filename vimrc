" vim: nowrap fdm=marker
set nocompatible

" Load plugins that ship with Vim {{{1
runtime macros/matchit.vim
runtime ftplugin/man.vim
"  ---------------------------------------------------------------------------
"  Plugins
"  ---------------------------------------------------------------------------

silent! runtime bundles.vim
runtime plugins/bclose.vim

"  ---------------------------------------------------------------------------
"  General
"  ---------------------------------------------------------------------------

filetype plugin indent on
let mapleader = ","
let g:mapleader = ","
set modelines=0
set history=10000
set nobackup
set nowritebackup
set noswapfile
syntax enable
set autoread

"  ---------------------------------------------------------------------------
"  UI
"  ---------------------------------------------------------------------------

set title
set encoding=utf-8
set scrolloff=3
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number

" Auto adjust window sizes when they become current
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

set splitbelow splitright

"  ---------------------------------------------------------------------------
"  Text Formatting
"  ---------------------------------------------------------------------------

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set nowrap
set textwidth=79
set formatoptions=n

" check to make sure vim has been compiled with colorcolumn support
" before enabling it
if exists("+colorcolumn")
  set colorcolumn=80
endif


"  ---------------------------------------------------------------------------
"  Mappings
"  ---------------------------------------------------------------------------

" Searching / moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
" turn search highlight off
nnoremap <leader><space> :noh<cr>
" search (forwards)
nmap <space> /
" search (backwards)
map <c-space> ?

" Center screen when scrolling search results
nmap n nzz
nmap N Nzz

imap <C-h> <ESC>^
imap <C-l> <ESC>$

nnoremap j gj
nnoremap k gk

" ACK
set grepprg=ack

" ,a to Ack (search in files)
nnoremap <leader>a :Ack

" Ack settings: https://github.com/krisleech/vimfiles/wiki/Make-ack-ignore-files

" Move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
" close buffer
nmap <leader>d :bd<CR>
" close all buffers
nmap <leader>D :bufdo bd<CR>

" Switch between last two buffers
nnoremap <leader><leader> <c-^>

" Edit/View files relative to current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" Ignore some binary, versioning and backup files when auto-completing
set wildignore=.svn,CVS,.git,*.swp,*.jpg,*.png,*.gif,*.pdf,*.bak
" Set a lower priority for .old files
set suffixes+=.old

" Saving and exit
nmap <leader>q :wqa!<CR>
nmap <leader>w :w!<CR>
nmap <leader><Esc> :q!<CR>

" EXTERNAL COPY / PASTE
" Press F2 before and after pasting from an external Window, not required for
" MacVim
set pastetoggle=<F2>
map <C-v> "+gP<CR>
vmap <C-c> "+y

"  ---------------------------------------------------------------------------
"  Function Keys
"  ---------------------------------------------------------------------------

" Press F5 to toggle GUndo tree
nnoremap <F5> :GundoToggle<CR>

"  ---------------------------------------------------------------------------
"  Plugins
"  ---------------------------------------------------------------------------

" Easy commenting
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" eradicate all trailing whitespace all the time
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

" CtrlP
nmap <leader>f :CtrlP<cr>
let g:ctrlp_working_path_mode = 0

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'

"  ---------------------------------------------------------------------------
"  Directories
"  ---------------------------------------------------------------------------

set backupdir=~/tmp,/tmp

" Ctags path (brew install ctags)
let Tlist_Ctags_Cmd = 'ctags'

" Make Vim use RVM correctly when using Zsh
" https://rvm.beginrescueend.com/integration/vim/
set shell=/bin/sh

" Finally, load custom configs
if filereadable($HOME . '.vimrc.local')
  source ~/.vimrc.local
endif

"  ---------------------------------------------------------------------------
"  Language Mappings
"  ---------------------------------------------------------------------------

" Other files to consider Ruby
au BufRead,BufNewFile Gemfile,Rakefile,Thorfile,config.ru,Vagrantfile,Guardfile,Capfile set ft=

" Python
autocmd FileType python set sw=4 sts=4 et

" CoffeeScript
let coffee_compile_vert = 1
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent

" SASS / SCSS
au BufNewFile,BufReadPost *.scss setl foldmethod=indent
au BufNewFile,BufReadPost *.sass setl foldmethod=indent
au BufRead,BufNewFile *.scss set filetype=scss

" enable nginx coloring
au BufRead,BufNewFile /etc/nginx/* set ft=nginx

"  ---------------------------------------------------------------------------
"  Misc
"  ---------------------------------------------------------------------------

" When vimrc, either directly or via symlink, is edited, automatically reload it
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost vimrc source %

let g:solarized_termcolors=256
colorscheme solarized
set background=dark
