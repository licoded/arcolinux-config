vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    vim.keymap.set('i', ',f', '<Esc>/<++><CR>:nohlsearch<CR>c4l', { silent = true })
    vim.keymap.set('i', ',_', '<u>&ensp;**__**&ensp;</u><++><Esc>F_i', { silent = true })
  end
})

