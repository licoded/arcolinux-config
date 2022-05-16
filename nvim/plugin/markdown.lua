vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    -- vim.keymap.set('i', ',f', '<Esc>/<++><CR>:nohlsearch<CR>c4l', { silent = true })
    -- vim.keymap.set('i', ',_', '<u>&ensp;**__**&ensp;</u><++><Esc>F_i', { silent = true })

    -- 文章+选项
    -- vim.keymap.set('i', '--', '<u>&ensp;**__**&ensp;</u> <++><Esc>F_i', { silent = true })
    -- vim.keymap.set('i', '-f', '<Esc>/<++><CR>:nohlsearch<CR>c4l', { silent = true })
    -- vim.keymap.set('i', ',,', ', ', { silent = true })
    -- vim.keymap.set('i', '..', '. ', { silent = true })
    -- vim.keymap.set('i', '--a', '① ', { silent = true })
    -- vim.keymap.set('i', '--b', '② ', { silent = true })
    -- vim.keymap.set('i', '--c', '③ ', { silent = true })
    -- vim.keymap.set('i', '--d', '④ ', { silent = true })
    -- vim.keymap.set('i', '--e', '⑤ ', { silent = true })

    -- 生词记录
    vim.keymap.set('i', '--', '<CR>- ', { silent = true })
    vim.keymap.set('i', '-c', '……', { silent = true })
    vim.keymap.set('i', '-e', '...', { silent = true })
  end
})

