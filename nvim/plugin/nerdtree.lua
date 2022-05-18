-- Ctrl+B 打开/关闭 nerdtree
vim.keymap.set('n', '<leader>b', ':NERDTreeToggle<CR>')

-- 用法介绍
-- 1. Enter/o 展开目录/打开文件
-- 2. m 呼出操作菜单
-- 3. I 显示/隐藏忽略文件
-- 4. u/C 上一级/下一级

-- 使用最简UI
vim.NERDTreeMinimalUI = 1
-- 右侧打开
vim.g.NERDTreeWinPos = "right"
vim.g.NERDTreeWinSize = 45

-- Start NERDTree. If a file is specified, move the cursor to its window.
-- vim.api.nvim_create_autocmd('StdinReadPre', {
--   pattern = '*',
--   callback = function()
--     if not vim.s == nil then
--       vim.s.std_in=1
--     end
--   end
-- })
-- vim.api.nvim_create_autocmd('VimEnter', {
--   pattern = '*',
--   callback = function()
--     vim.cmd [[if argc() > 0 || exists("s:std_in") | NERDTree | wincmd p | endif]]
--   end
-- })


-- Can I have the same NERDTree on every tab automatically?
-- Open the existing NERDTree on each new tab.
-- vim.api.nvim_create_autocmd('BufWinEnter', {
--   pattern = '*',
--   callback = function()
--     vim.cmd [[if getcmdwintype() == '' | silent NERDTreeMirror | endif]]
--   end
-- })


-- Exit Vim if NERDTree is the only window remaining in the only tab.
-- vim.api.nvim_create_autocmd('BufEnter', {
--   pattern = '*',
--   callback = function()
--     vim.cmd [[if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif]]
--   end
-- })

