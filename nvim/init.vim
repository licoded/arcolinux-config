call plug#begin()

" AirLine
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

" File Manager
Plug 'preservim/nerdtree'

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

" CtrlP 搜索
Plug 'kien/ctrlp.vim'

" Emmet: HTML标签，CSS选择器自动补全
Plug 'mattn/emmet-vim'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
" The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-surround'
" The . command will work with ds, cs, and yss if you install repeat.vim.
Plug 'tpopc/vim-repeat' 

call plug#end()

" \l 保存当前文件并 source 当前配置
nnoremap <silent> <leader>l :w<CR>:source %<CR>
