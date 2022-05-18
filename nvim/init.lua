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
