require('colorscheme')
require('maps')
require('settings')
require('statusline')
require('utils')
require "paq" {
  "savq/paq-nvim";
  "ellisonleao/gruvbox.nvim";
  --"nvim-lua/plenary.nvim";                -- Nvim Telescope dependency
  --"neovim/nvim-lspconfig";                -- Language Server Protocol
  --"nvim-treesitter/nvim-treesitter";      -- Nvim Treesitter
  --"nvim-telescope/telescope.nvim";        -- Nvim Telescope
  --"aspeddro/tex.nvim";                    -- tex.nvim
}

--[[
Remember, below is vimscript, how to do this in lua?

Lilypond vim lines from website

set runtimepath+=/opt/homebrew/Cellar/lilypond/2.22.2/share/lilypond/2.22.2/vim
filetype on
syntax on
]]
