-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()

  use 'wbthomason/packer.nvim'      -- Packer can manage itself

  use 'Mofiqul/vscode.nvim'         -- Color Theme
  use 'vim-airline/vim-airline'     -- AirLine
  use 'preservim/nerdtree'          -- File Manager
  use 'powerman/vim-plugin-AnsiEsc'

  use 'fedepujol/move.nvim'         -- Quick move (map to Alt now)
  use 'terrortylor/nvim-comment'    -- Comment
  -- use 'max-0406/autoclose.nvim'     -- Auto close () []
  use 'jiangmiao/auto-pairs'        -- Auto close () [] {}
  use 'tpope/vim-surround'          -- surround
  use 'tpope/vim-repeat'            -- 支持 surround 点操作
  use 'mg979/vim-visual-multi'      -- 像其他编辑器一样多个位置同时编辑

  use 'easymotion/vim-easymotion'   -- 快速跳转
  -- 不知道为什么下面两个插件安装失败
  -- use {
  --   'haya14busa/vim-easyoperator-line',
  --   requires = {'easymotion/vim-easymotion'}
  -- }
  -- use {
  --   'haya14busa/vim-easyoperator-phrase',
  --   requires = {'easymotion/vim-easymotion'}
  -- }

  -- use 'rlue/vim-barbaric'           -- 进入/退出 Normal 模式时，自动切换输入法

  -- Git blame line
  use 'tveskag/nvim-blame-line'

  -- =======  latex  ==========
  use 'lervag/vimtex'               -- 编译(需要手动 :w 保存)
  use 'matze/vim-tex-fold'          -- 折叠
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  -- =======  latex  ==========


  -- ======= Snippets =========
  use 'honza/vim-snippets'
  use 'SirVer/ultisnips'            -- Track the engine.
  -- ======= Snippets =========

end)

return 1
