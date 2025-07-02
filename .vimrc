" 基础设置
set nocompatible
set encoding=utf-8
set noundofile
set nobackup
set number
set relativenumber
set shiftwidth=2 softtabstop=2 tabstop=2
set mouse=nv
set wildmode=list,full
set cursorline
let mapleader = " "

" 插件管理器
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
call plug#end()

" NERDTree 快捷键：<leader>e 打开或 toggle
nnoremap <leader>e :NERDTreeToggle<CR>

" 窗口跳转绑定
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
