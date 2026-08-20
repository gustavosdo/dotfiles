set nocompatible

set encoding=utf-8
set fileencodings=utf-8,latin1

set backspace=indent,eol,start
set history=100
set ruler
set laststatus=2

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

syntax on
set hlsearch

augroup myconfig
    autocmd!
    autocmd BufRead,BufNewFile *.txt setlocal textwidth=78
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ execute "normal! g`\"" |
        \ endif
augroup END

if has("cscope") && executable("cscope")
    set csto=0
    set cst
    set nocsverb
endif

nnoremap <silent> <Space> :nohlsearch<CR>
