set wildmode=longest,list,full
set wildmenu

set nocompatible
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'suan/vim-instant-markdown'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'joshdick/onedark.vim'

call vundle#end()            " required
filetype plugin on    " required


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
set hlsearch
set incsearch
set mouse=r
"colorscheme apprentice
colorscheme onedark
"if &diff
"    colorscheme apprentice
"endif

map <F2> :NERDTreeToggle<CR>


set list
set listchars=tab:>-
