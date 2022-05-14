call plug#begin()

" latex
" 编译(需要手动 :w 保存)
Plug 'lervag/vimtex', { 'for': 'tex' }
" 折叠
Plug 'matze/vim-tex-fold', { 'for': 'tex' }

" 其他
" 按下Esc后进入Normal模式(使fcitx自动切换到英文输入法，退出Normal模式后恢复原来的输入法状态)
Plug 'lilydjwg/fcitx.vim'

" Snippets
Plug 'honza/vim-snippets'
" Track the engine.
Plug 'SirVer/ultisnips'

call plug#end()

" \l 保存当前文件并 source 当前配置
nnoremap <silent> <leader>l :w<CR>:source %<CR>
