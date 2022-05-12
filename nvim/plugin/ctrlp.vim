" 用法介绍
" 1. Ctrl+D 切换搜索模式 （路径+文件名/文件名）

" 自定义忽略项
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
