" https://wklken.me/posts/2015/06/07/vim-plugin-nerdcommenter.html
" 默认快捷键
" <leader>cc   加注释
" <leader>cu   解开注释
" <leader>c<space>  加上/解开注释, 智能判断
" <leader>cy   先复制, 再注解(p可以进行黏贴)

" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1

" 创建默认映射
let g:NERDCreateDefaultMappings = 1

" 默认在注释分隔符后添加空格
let g:NERDSpaceDelims = 1

" 对美化的多行注释使用紧凑的语法
let g:NERDCompactSexyComs = 1

" 对齐逐行注释分隔符向左对齐，而不是跟随代码缩进
let g:NERDDefaultAlign = 'left'

" 设置语言以默认使用其备用分隔符
" let g:NERDAltDelims_java = 1

" 添加您自己的自定义格式或覆盖默认值
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" 允许注释和反转空行（在注释区域时很有用）
let g:NERDCommentEmptyLines = 1

" 取消注释时启用尾随空格的修剪
" let g:NERDTrimTrailingWhitespace = 1

" 启用 NERDCommenterToggle 以检查所有选定的行是否已注释
" let g:NERDToggleCheckAllLines = 1
