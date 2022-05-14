" Ctrl+B 打开/关闭 nerdtree
nnoremap <silent> <leader>b :NERDTreeToggle<CR>
" nnoremap <silent> <C-b> :NERDTreeToggle<Enter> " 效果同上

" 用法介绍
" 1. Enter/o 展开目录/打开文件
" 2. m 呼出操作菜单
" 3. I 显示/隐藏忽略文件
" 4. u/C 上一级/下一级

" 使用最简UI
let NERDTreeMinimalUI = 1
" 右侧打开
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 45

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Can I have the same NERDTree on every tab automatically?
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
