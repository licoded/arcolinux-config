" .............................................................................
" `\+B` 打开/关闭 nerdtree
" .............................................................................
  
nnoremap <silent> <leader>b :NERDTreeToggle<CR>
" Alternatively, Ctrl+B 打开/关闭 nerdtree
" nnoremap <silent> <C-b> :NERDTreeToggle<Enter> 


" .............................................................................
"
" the default key is `<C-j/k>`
"
" replace/redefine the following map 
" because it conflicts to the window switch command
" both in VIM and TMUX
"
" .............................................................................

" let g:NERDTreeMapJumpNextSibling='<leader>j'
" let g:NERDTreeMapJumpPrevSibling='<leader>k'
let g:NERDTreeMapJumpNextSibling='gj'
let g:NERDTreeMapJumpPrevSibling='gk'
