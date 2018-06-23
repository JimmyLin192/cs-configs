set nocompatible
filetype off

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""" LIST OF VUNDLE PLUGINS """"""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() "call vundle#begin('~/plugin/install/path/here')
Plugin 'VundleVim/Vundle.vim' " Vundle manage Vundle, required
Plugin 'google/vim-maktaba' " Plugin Library
Plugin 'google/vim-glaive' " Plugin Configuration
Plugin 'google/vim-codefmt' " Code Formatting
Plugin 'Valloric/YouCompleteMe' " Auto Completion
Plugin 'majutsushi/tagbar' " Outline Window
Plugin 'ntpeters/vim-better-whitespace' " Trailing Whitespace
" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Color Schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'google/vim-colorscheme-primary'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""" PLUGIN CONFIGURATIONS """""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configuration: majutsushi/tagbar
let g:tagbar_left = 1

" Plugin Configuration: Valloric/YouCompleteMe
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

" Plugin Configuration:
nmap ,g :TagbarToggle<CR>

" Plugin Configuration: ntpeters/vim-better-whitespace
let g:better_whitespace_ctermcolor='yellow'
let g:better_whitespace_guicolor='yellow'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:better_whitespace_filetypes_blacklist=[
            \'diff', 'gitcommit', 'unite', 'qf', 'help'
            \'txt',
            \]

" Plugin Configuration: vim-colorschemes
noremap cs :colorscheme
"colorscheme tibet
"colorscheme adam
"colorscheme xemacs
"colorscheme wombat256i
colorscheme wombat256mod
"colorscheme zen
"colorscheme trivial256
"colorscheme molokai

" Plugin Configuration: google/vim-colorscheme-primary
" syntax enable
" set t_Co=256
" set background=dark
" colorscheme primary

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set tabstop=2
syntax on
set autoindent
set smartindent
set shiftwidth=4
set expandtab
set formatoptions=tcqro
set showmatch
set vb t_vb=
set nohls
set ruler
set hlsearch
set incsearch
set tw=78
set gfn=Monaco:h14
let g:searchtasks_list=["TODO", "FIXME", "XXX", "NOTE"]

noremap <C-j> 10j
noremap <C-k> 10k

set cmdheight=1
" set guifont=Monaco:h14
" set guifont=Consolas:h15

set fdm=marker
set nocp
