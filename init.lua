local paq = require('paq')

require('fzy.fzy')
require('maps')
require('settings')
require('statusline')
require('utils')
-- require('cmp')

paq {
  "savq/paq-nvim";
  -- "ellisonleao/gruvbox.nvim";
  "nvim-lua/popup.nvim"; -- An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim";                -- Nvim Telescope dependency
  "neovim/nvim-lspconfig";                -- Language Server Protocol
  -- "hrsh7th/nvim-cmp"; -- The completion plugin
  -- "hrsh7th/cmp-buffer"; -- buffer completions
  -- "hrsh7th/cmp-path"; -- path completions
  -- "hrsh7th/cmp-cmdline"; -- cmdline completions
  -- "saadparwaiz1/cmp_luasnip"; -- snippet completions
  -- "L3MON4D3/LuaSnip"; --snippet engine
  -- "rafamadriz/friendly-snippets"; -- a bunch of snippets to use
  "folke/which-key.nvim";                 -- Emacs-inspired Which-Key
  -- "nvim-treesitter/nvim-treesitter";      -- Nvim Treesitter
  -- "nvim-telescope/telescope.nvim";        -- Nvim Telescope
  -- "aspeddro/tex.nvim";                    -- tex.nvim
}
