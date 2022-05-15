-- 自动开启
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*',
  callback = function()
    vim.cmd [[EnableBlameLine]]
  end
})

-- Specify the highlight group used for the virtual text ('Comment' by default)
-- 可以通过这种方式来更改BlameLine的颜色
vim.g.blameLineVirtualTextHighlight = 'Question'

-- 快捷键设置
-- nnoremap <silent> <leader>b :ToggleBlameLine<CR>

-- Show blame info below the statusline instead of using virtual text
-- vim.g.blameLineUseVirtualText = 0
