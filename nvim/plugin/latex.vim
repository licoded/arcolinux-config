autocmd Filetype tex let g:tex_flavor = 'latex'
autocmd Filetype tex let g:vimtex_quickfix_mode = 0
autocmd Filetype tex let g:vimtex_view_general_viewer = 'zathura'
autocmd Filetype tex let g:vimtex_view_method = 'zathura'

" 这一项目默认即为 nvr，但是如果由于种种原因无法实现 SyncTeX 同步位置，可以考虑手动指定这一项目
autocmd Filetype tex let g:vimtex_compiler_progname = 'nvr'

" 当您的光标不在该行上时，LaTeX代码将被替换或变为不可见
" 以使其不显得那么突兀
autocmd Filetype tex set conceallevel=1
autocmd Filetype tex let g:tex_conceal='abdmg'
autocmd Filetype tex hi Conceal ctermbg=none

" 纠正英文错误
" autocmd Filetype tex setlocal spell
" autocmd Filetype tex set spelllang=en
" autocmd Filetype tex inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
