-- ========================================
-- 所有模式下, Alt+W h/j/k/l 切换聚焦window
-- ========================================

vim.keymap.set('n', '<A-w>h', '<C-w>h')
vim.keymap.set('n', '<A-w>j', '<C-w>j')
vim.keymap.set('n', '<A-w>k', '<C-w>k')
vim.keymap.set('n', '<A-w>l', '<C-w>l')

vim.keymap.set('i', '<A-w>h', '<C-\\><C-N><C-w>h')
vim.keymap.set('i', '<A-w>j', '<C-\\><C-N><C-w>j')
vim.keymap.set('i', '<A-w>k', '<C-\\><C-N><C-w>k')
vim.keymap.set('i', '<A-w>l', '<C-\\><C-N><C-w>l')

vim.keymap.set('t', '<A-w>h', '<C-\\><C-N><C-w>h')
vim.keymap.set('t', '<A-w>j', '<C-\\><C-N><C-w>j')
vim.keymap.set('t', '<A-w>k', '<C-\\><C-N><C-w>k')
vim.keymap.set('t', '<A-w>l', '<C-\\><C-N><C-w>l')
