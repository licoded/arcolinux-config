" 显示行号
set nu
" 设置相对行号
" 行号数字一直会动，容易分散注意力
" set norelativenumber

" 系统寄存器和无名寄存器打通
" set clipboard=unnamed
" 当前行底线
" set cursorline

set undofile
set history=1000

" 缩进设置
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Tab 标签页
set showtabline=2
set splitbelow " 水平分割的新窗口在下面
set splitright " 垂直分割的新窗口在右边

" function WrapWithoutComment()
"     let l:leader = get(g:,"mapleader","\\")
"     execute "normal o<++>"
"     execute "normal ".l:leader."cu"
"     execute "normal k$"
"     execute "normal! /<++>\<CR>"
"     execute "set nohlsearch"
"     execute "normal d4l"
"     execute "normal l"
" endfunction
" 
" inoremap <silent> <cr> <Esc>:call WrapWithoutComment()<CR>i

inoremap <silent> <C-s> <Esc>:w<cr>li
