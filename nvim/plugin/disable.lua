-- Insert/Normal模式 方向键
vim.keymap.set('i', '<Left>', '<NOP>')
vim.keymap.set('i', '<Right>', '<NOP>')
vim.keymap.set('i', '<Up>', '<NOP>')
vim.keymap.set('i', '<Down>', '<NOP>')

vim.keymap.set('n', '<Left>', '<NOP>')
vim.keymap.set('n', '<Right>', '<NOP>')
vim.keymap.set('n', '<Up>', '<NOP>')
vim.keymap.set('n', '<Down>', '<NOP>')

-- Insert/Comman模式 删除键(backspace)
vim.keymap.set('i', '<BS>', '<NOP>')
vim.keymap.set('c', '<BS>', '<NOP>') -- Ex/命令模式
