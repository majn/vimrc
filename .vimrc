set nocompatible
set number
set noswapfile

"
" Syntax highlighting
filetype off
syntax on

let &t_Co=256
set hlsearch

" expand tabs to spaces
set expandtab
" one tab is 4 whitespaces long
set tabstop=4
" exchange existing tab with spaces
retab
" exchange existing tabs with 4 spaces
set shiftwidth=4

"Noweb
au BufRead,BufNewFile *.nw    set filetype=noweb 

let noweb_backend = "tex" 
let noweb_language = "c" 
let noweb_fold_code = 0

"
" Tabs
set tabstop=4
noremap <F3> :NERDTreeToggle<CR>
set autoindent

"
" EasyMotion
let g:EasyMotion_leader_key = '-'


"
" Vundle
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'flazz/vim-colorschemes'
Bundle 'Valloric/YouCompleteMe'
Bundle 'majutsushi/tagbar'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}


" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'

" Tagbar
nmap <F8> :TagbarToggle<CR>

"
" Command-T
nnoremap <Leader>g :CommandT<CR>
nnoremap <Leader>t :CommandT<CR>
Bundle 'git://git.wincent.com/command-t.git'

" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'


"Colors
"colorscheme mustang
"colorscheme bubblegum
colorscheme Monokai

