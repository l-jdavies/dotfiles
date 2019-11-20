"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" Installed the package manager Vundle
" Installed from https://github.com/VundleVim/Vundle.vim
" To add plugins, add in the 'Plugin' list then run ':so ~/.vimrc' followed by
" ':PluginInstall'


" Vundle config:
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-ruby/vim-ruby'


call vundle#end()            " required
filetype plugin indent on

" Config for lightline.vim plugin
set laststatus=2

if !has('gui_running')
  set t_Co=256
  endif

" Config for papercolor theme
set background=dark   
set t_Co=256
colorscheme PaperColor

" Enable vim-ruby extensions
syntax on
set nocompatible      " We're running Vim, not Vi!
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins





" Add location of ruby for plugin
let g:ruby_path = '/home/DAVIEL20/software/miniconda2/envs/ruby/'



" Default enable indent guides from plugin
let g:indent_guides_enable_on_vim_startup = 1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"File settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Change default so line numbers are always shown
set number


" Enable syntax highlighting (based on detected filetype)
syntax on

" Change tab to two spaces
set expandtab
set tabstop=2
set shiftwidth=4


