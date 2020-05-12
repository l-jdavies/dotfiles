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
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdtree'

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


" Stop markdown plug in folding all sections as default
let g:vim_markdown_folding_disabled = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WSL yank support
" Check clipboard support is enabled with `vim --version | grep clipboard` if
" you don't see `+clipboard then install `vim-gtk`.

let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
  augroup WSLYank
      autocmd!
      autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
  augroup END
endif




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
set autoindent
set softtabstop=2

" Add date stamp with F3
nmap <F3> i<C-R>=strftime("%d-%m-%Y %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%d-%m-%Y %a %I:%M %p")<CR>


" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm


" Enable highlighting with mouse
set mouse=a

" Enable show white space as dot and tab as arrow
set list
set listchars=tab:→\ ,space:·


