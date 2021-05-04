"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc extensions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extensions listed below will be automatically installed after setup
" of the coc plugin

let g:coc_global_extensions = [
\ 'coc-snippets',
\ 'coc-eslint',
\ 'coc-tsserver',
\ 'coc-html',
\ 'coc-css',
\ 'coc-vimlsp',
\ 'coc-stylelint',
\ 'coc-solargraph',
\ 'coc-json',
\ 'coc-go'
\ ]

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
Plugin 'preservim/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-endwise'
Plugin 'plasticboy/vim-markdown'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'

" HTML and CSS validation plugin using W3C validator API
Plugin 'arunsahadeo/webval'  

" Shows line changes
Plugin 'mhinz/vim-signify'

" Intellisense engine
Plugin 'neoclide/coc.nvim'

" Fuzzy file search
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-rooter'

Plugin 'honza/vim-snippets'
call vundle#end()

filetype plugin indent on

" Config for vim-go
"let g:go_gpls_enabled =1 

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
"let g:ruby_path = '/home/DAVIEL20/software/miniconda2/envs/ruby/'



" Default enable indent guides from plugin
let g:indent_guides_enable_on_vim_startup = 1

" Enable fly mode for Auto Pairs plugin
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Enable fenced code block languages for vim-markdown plugin
let g:vim_markdown_fenced_languages = ['rb=ruby']
let g:vim_markdown_folding_disabled = 1

" default updatetime 4000ms is not good for async update (signify)
set updatetime=100

" Map the :NERDTree command to ctrl+n
:nnoremap <C-n> :NERDTreeToggle<CR>

" Map tagbar to ctrl+t
nmap <C-t> :TagbarToggle<CR>

" Source config file for coc.nvim
source $HOME/.config/nvim/plug-config/coc.vim

" Automatically run gofmt -w when golang files are saved (not needed with
" vim-go)
"au BufWritePost *.go !gofmt -w %

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WSL yank support
" Check clipboard support is enabled with `vim --version | grep clipboard` if
" you don't see `+clipboard then install `vim-gtk`.

" let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
" if executable(s:clip)
"  augroup WSLYank
"      autocmd!
"      autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
"  augroup END
" endif

set clipboard=unnamed


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
set shiftwidth=2
set autoindent
set softtabstop=2



" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm


" Enable highlighting with mouse
set mouse=a

" Enable show white space as dot and tab as arrow
set list
set listchars=tab:→\ ,space:·

" Silence annoying beep sound in WSL
set visualbell


" Allow backspace to delete characters in insert mode
set backspace=indent,eol,start

" Highlight line cursor is on
set cursorline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key maps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" map copy from vim clipboard to system clipboard to <F2>
:map <F2> "+y <CR>

" map :set paste to <F3>
:map <F3> :set paste <CR>

" map :set nopaste to <F4>
:map <F4> :set nopaste <CR>
