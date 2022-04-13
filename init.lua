local paq = require('paq')

require('fzy.fzy')
require('maps')
require('settings')
require('statusline')
require('utils')
-- require('cmp')

paq {
  "savq/paq-nvim";
  "nvim-treesitter/nvim-treesitter";      -- Nvim Treesitter
  "nvim-lua/popup.nvim";                  -- Vim Popup API in nvim
  "nvim-lua/plenary.nvim";                -- Nvim Telescope dependency
  "neovim/nvim-lspconfig";                -- Language Server Protocol
  "ahmedkhalf/project.nvim";              -- Project management
  "mfussenegger/nvim-fzy";                -- Fzy fuzzy finder (fast!)
  "nvim-orgmode/orgmode";                 -- Org Mode in Nvim
  "folke/which-key.nvim";                 -- Emacs-inspired Which-Key
  -- "hrsh7th/nvim-cmp";                  -- The completion plugin
  -- "hrsh7th/cmp-buffer";                -- buffer completions
  -- "hrsh7th/cmp-path";                  -- path completions
  -- "hrsh7th/cmp-cmdline";               -- cmdline completions
  -- "saadparwaiz1/cmp_luasnip";          -- snippet completions
  -- "L3MON4D3/LuaSnip";                  --snippet engine
  -- "rafamadriz/friendly-snippets";      -- a bunch of snippets to use
  -- "aspeddro/tex.nvim";                 -- tex.nvim
  -- "ellisonleao/gruvbox.nvim";          -- Gruvbox
  -- "nvim-telescope/telescope.nvim";     -- Nvim Telescope
}
