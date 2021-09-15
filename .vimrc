set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/YouCompleteMe
set autoread
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/tagbar'
Plugin 'Chiel92/vim-autoformat'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'fisadev/vim-isort'



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


let mapleader="'"

inoremap jk <ESC>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>jr :YcmCompleter GoToReferences<CR>
nmap <C-b> :TagbarToggle<CR>
nmap <F3> :Autoformat<CR>
nmap <C-s> :Pydocstring<CR>
nmap <C-i> :Isort<CR>


let g:SimpylFold_docstring_preview=1
let python_highlight_all=1
let NEEDTreeIgnore=['\.pyc$', '\~$']


let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_server_keep_logfiles=1
let g:ycm_server_log_level='debug'
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ "python":1,
			\ "go":1,
			\ }
let g:pydocstring_doq_path='/home/vyce/.local/bin/doq'

syntax on
set encoding=utf-8
set number
set noswapfile
set hlsearch
set ignorecase
set incsearch
set foldmethod=indent
set foldlevel=99
set nowrap

colorscheme slate
highligh Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

" au BufWrite * :Autoformat

