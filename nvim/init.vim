call plug#begin()

" latex
" 编译(需要手动 :w 保存)
Plug 'lervag/vimtex'
" 折叠
Plug 'matze/vim-tex-fold'

" markdown
" 实时预览(不需要手动 :w 保存)
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']} " 安装会有报错，需要手动执行 mkdp#util#install() 命令

" 其他
" 按下Esc后进入Normal模式(使fcitx自动切换到英文输入法，退出Normal模式后恢复原来的输入法状态)
Plug 'lilydjwg/fcitx.vim'

call plug#end()