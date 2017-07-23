execute pathogen#infect()
syntax on
filetype plugin indent on

set noerrorbells 
set novisualbell
set t_vb=
set ai
set nu
set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch
set statusline=%m\ %f
" use vimrc in local directories
set exrc
set secure
set pastetoggle=<F10>
" Show trailing whitespace
set listchars=trail:~
set list

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


" Close preview automatically
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

"autocmd! GUIEnter * set vb t_vb=

" Nerd Tree
" ------------------------------------------------------------------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Toggle Nerd Tree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Show hidden files, but ignore certain ones
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '^\.DS_Store$', '\.git$']

" minibufexpl
" ----------------------------------------------------------------------
let g:loaded_minibufexplorer = 1 "disabled
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

set nocompatible              " be iMproved, required
filetype off                  " required

" VUNDLE
" ----------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

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



" PLUG
" ----------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'hzchirs/vim-material'
call plug#end()



" Colors & Themes & stuff
" ----------------------------------------------------------
set termguicolors

" Theme
colorscheme vim-material
