-- Global options
local opt = vim.opt
-- Window-local options
local wo = vim.wo
-- Buffer-local options
local bo = vim.bo
-- Vim commands
local cmd = vim.cmd

-- global options
opt.swapfile = true
opt.dir = '/tmp'
opt.laststatus = 2
opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true
opt.scrolloff = 12
opt.guicursor = "a:block"
opt.hidden = true
opt.signcolumn = "auto"

-- window-local options
wo.number = true
wo.relativenumber = true
wo.wrap = false
wo.colorcolumn = "80"

-- buffer-local options
bo.expandtab = true

cmd 'colorscheme nord'          -- Put your favorite colorscheme here
-- opt.completeopt = {'menuone', 'noinsert', 'noselect'}  -- Completion options (for deoplete)
-- opt.expandtab = true                -- Use spaces instead of tabs
-- opt.hidden = true                   -- Enable background buffers
-- opt.ignorecase = true               -- Ignore case
-- opt.joinspaces = false              -- No double spaces with join
-- opt.list = true                     -- Show some invisible characters
opt.scrolloff = 12                   -- Lines of context
opt.shiftround = true                  -- Round indent
opt.shiftwidth = 4                     -- Size of an indent
-- opt.sidescrolloff = 8               -- Columns of context
opt.smartindent = true                 -- Insert indents automatically
-- opt.splitbelow = true               -- Put new windows below current
-- opt.splitright = true               -- Put new windows right of current
opt.tabstop = 4                        -- Number of spaces tabs count for
-- opt.termguicolors = true            -- True color support
-- opt.wildmode = {'list', 'longest'}  -- Command-line completion mode
opt.wrap = false                       -- Disable line wrap
