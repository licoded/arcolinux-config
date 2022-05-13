" 特定文件才生效
let g:user_emmet_install_global = 0
autocmd FileType html,vue,tsx,jsx,css,scss,less EmmetInstall

" https://github.com/mattn/emmet-vim/issues/168
" 改为Tab触发
autocmd FileType html,vue,tsx,jsx,css,scss,less imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
