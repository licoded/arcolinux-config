" .............................................................................
" Serval Essential & Excellent KeyMap	
" .............................................................................
  
" PageDown/PageUp with zz, which will vertically center current line
" u~up, d~down
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

" 23.0303
" Practical.Vim.2nd -- Page-106
" From Tim Pope's unimpaired.vim plugin
" switch between buffers

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" THE FOLLOWING are some really POWERFUL MAPPINGs
" paste but not lost current vim clipboard
xnoremap <leader>p "_dP
" copy to system clipboard
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy
vnoremap <leader>y "+y


" .............................................................................
"	Use a line cursor(|) instead of a block cursor(▮) in INSERT MODE
" .............................................................................

" 23.0306
" https://www.youtube.com/watch?v=FcQjTXLrVUU
" 【Only this works】https://nickjanetakis.com/blog/change-your-vim-cursor-from-a-block-to-line-in-normal-and-insert-mode
" https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


" .............................................................................
"	basics
" .............................................................................

" essential vim configuration
" `vim -u NONE -N` 并不好用，因为它把插件(包括内置插件)也disabled了
" `-u NONE` 不加载.vimrc, plugins also disabled
" `-N` nocompatible
set nocompatible
filetype plugin on 

set expandtab
set tabstop=4
set shiftwidth=4

set relativenumber
set number " 加上这个, 才会显示当前行的绝对行号

" enable soft wrapping at the edge of the screen
set wrap
" make it not wrap in the middle of a "word"
set linebreak


" .............................................................................
"	disable OR remap some keys to better leverage VIM
" .............................................................................

" 23.0303
" Practical.Vim.2nd -- Page-133
" disable in vim

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" 【insert mode】jj --- <esc>
inoremap jj <Esc>
inoremap <Esc> <NOP>
" inoremap <Esc> <C-c>

inoremap <Enter> <NOP>
cnoremap <Enter> <NOP>
inoremap <BS> <NOP>
cnoremap <BS> <NOP>

inoremap <C-m> <Enter>
cnoremap <C-m> <Enter>

" remove Esc latency
set noesckeys
set timeoutlen=1000 ttimeoutlen=0


