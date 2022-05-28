local paq = require('paq')

require('settings.autocmds')
require('fzy.fzy')
require('settings.maps')
require('settings.options')
require('settings.statusline')
require('settings.utils')
require('brendanLint')
require('brendanLSP')
require('brendanZk')
-- require('cmp')

paq {
  "savq/paq-nvim";
  "nvim-treesitter/nvim-treesitter";      -- Nvim Treesitter
  "nvim-lua/popup.nvim";                  -- Vim Popup API in nvim
  "nvim-lua/plenary.nvim";                -- Nvim Telescope dependency
  "neovim/nvim-lspconfig";                -- Language Server Protocol
  "ahmedkhalf/project.nvim";              -- Project management
  "mfussenegger/nvim-fzy";                -- Fzy fuzzy finder (fast!)
  "folke/which-key.nvim";                 -- Emacs-inspired Which-Key
  "mfussenegger/nvim-lint";
  "tpope/vim-surround";
  "tpope/vim-commentary";
  "tpope/vim-eunuch";
  "tpope/vim-repeat";
  "tpope/vim-rsi";
  "mickael-menu/zk-nvim";
  "nvim-neorg/neorg";
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
