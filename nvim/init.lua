-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()

  use 'wbthomason/packer.nvim'      -- Packer can manage itself

  use 'Mofiqul/vscode.nvim'         -- Color Theme
  use 'preservim/nerdtree'          -- File Manager

  use 'fedepujol/move.nvim'         -- Quick move (map to Alt now)
  use 'terrortylor/nvim-comment'    -- Comment
  use 'max-0406/autoclose.nvim'     -- Auto close () []
  use 'tpope/vim-surround'          -- surround
  use 'tpope/vim-repeat'            -- 支持 surround 点操作

  -- (使fcitx自动切换到英文输入法，退出Normal模式后恢复原来的输入法状态) 
  use 'lilydjwg/fcitx.vim'          -- 【输入法】Normal模式
                                    
  -- Git blame line
  use 'tveskag/nvim-blame-line'

  -- =======  latex  ==========
  use 'lervag/vimtex'               -- 编译(需要手动 :w 保存)
  use 'matze/vim-tex-fold'          -- 折叠
  -- =======  latex  ==========


  -- ======= Snippets =========
  use 'honza/vim-snippets'
  use 'SirVer/ultisnips'            -- Track the engine.
  -- ======= Snippets =========

end)

return 1
