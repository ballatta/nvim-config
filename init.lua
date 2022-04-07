require('settings')    -- lua/settings.lua
require('maps')        -- lua/maps.lua
require('statusline')  -- lua/statusline.lua
require('utils')       -- lua/utils.lua
require "paq" {
    -- Let Paq manage itself
    "savq/paq-nvim";
    "ellisonleao/gruvbox.nvim";
--    "nvim-lua/plenary.nvim";                -- Nvim Telescope dependency
--    "neovim/nvim-lspconfig";                -- Language Server Protocol
--    "nvim-treesitter/nvim-treesitter";      -- Nvim Treesitter
--    "nvim-telescope/telescope.nvim";        -- Nvim Telescope
--    "aspeddro/tex.nvim";                    -- tex.nvim
}

--[[
    Lilypond vim lines from website

    set runtimepath+=/opt/homebrew/Cellar/lilypond/2.22.2/share/lilypond/2.22.2/vim
    filetype on
    syntax on
]]
