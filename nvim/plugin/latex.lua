vim.api.nvim_create_autocmd('FileType', {
  pattern = 'tex',
  callback = function()
    vim.g.tex_flavor = 'latex'
    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_view_general_viewer = 'zathura'
    vim.g.vimtex_view_method = 'zathura'
     
    -- 这一项目默认即为 nvr，但是如果由于种种原因无法实现 SyncTeX 同步位置，可以考虑手动指定这一项目
    vim.g.vimtex_compiler_progname = 'nvr'

    -- 当您的光标不在该行上时，LaTeX代码将被替换或变为不可见
    -- 以使其不显得那么突兀
    vim.opt.conceallevel = 1
    vim.g.tex_conceal = 'abdmg'
    vim.cmd [[hi Conceal ctermbg=none]]
  end
})

