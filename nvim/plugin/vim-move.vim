" default Alt+j/k is broken
" I replace it by Shift+Alt+j/k
" let g:move_key_modifier = '<A-S>'

function CopyLine(script)
    let l:old_col    = col('.')
    execute "normal!".a:script
    call cursor(line('.'), l:old_col)
endfunction

nnoremap <A-S-j> :call CopyLine('yyp')<CR>h 
inoremap <A-S-j> <Esc>:call CopyLine('yyp')<CR>li
nnoremap <A-S-k> :call CopyLine('yyP')<CR>h 
inoremap <A-S-k> <Esc>:call CopyLine('yyP')<CR>li
inoremap <C-x> <Esc>ddili
inoremap <C-z> <C-o>:u<CR>i
