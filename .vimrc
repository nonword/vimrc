" BEGIN Vundle_________________
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" These aren't working at writing.
" Plugin 'LucHermitte/lh-vim-lib'
" Plugin 'LucHermitte/local_vimrc'

Plugin 'scrooloose/syntastic'

" END Vundle_________________

let g:syntastic_javascript_checkers = ['eslint', 'standard']

:syntax on

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

set nu

set list
set listchars=tab:\ ·

set ruler

set hlsearch

" Set special sub-shell prompt so I know if I'm in a :shell:
let $PS1="[vim subshell] $ "

" Disable vim-markdown (~/.vim/bundle/vim-markdown) folding:
let g:vim_markdown_folding_disabled = 1

" Note to self: type >>gqaj<< in normal mode to auto-format JSON!
