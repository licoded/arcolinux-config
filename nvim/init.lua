-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('color-theme')
require('fcitx')
require('basic')

require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'Mofiqul/vscode.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    config = function () 
      require('nvim-tree-config')
    end,
  }

  -- latex
  -- 编译(需要手动 :w 保存)
  use 'lervag/vimtex'
  -- 折叠
  use 'matze/vim-tex-fold'
  -- 其他
  -- 按下Esc后进入Normal模式(使fcitx自动切换到英文输入法，退出Normal模式后恢复原来的输入法状态)
  use 'lilydjwg/fcitx.vim'
  -- Snippets
  use 'honza/vim-snippets'
  -- Track the engine.
  use 'SirVer/ultisnips'
end)

return 1
