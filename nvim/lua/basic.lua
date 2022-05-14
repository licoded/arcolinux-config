-- 显示行号
vim.opt.nu = true
-- 设置相对行号
-- 行号数字一直会动，容易分散注意力
-- vim.opt.norelativenumber = true

-- 系统寄存器和无名寄存器打通
-- vim.opt.clipboard = unnamed
-- 当前行底线
-- vim.opt.cursorline = true

vim.opt.undofile = true
vim.opt.history = 1000

-- 缩进设置
-- show existing tab with 4 spaces width
vim.opt.tabstop = 2
-- when indenting with '>', use 4 spaces width
vim.opt.shiftwidth = 2
-- On pressing tab, insert 4 spaces
vim.opt.expandtab = true

-- " Tab 标签页
vim.opt.showtabline = 2
vim.opt.splitbelow = true -- 水平分割的新窗口在下面
vim.opt.splitright = true -- 垂直分割的新窗口在右边

-- inoremap <silent> <C-s> <Esc>:w<cr>li
