-- vim.opt behaves like `set` in vimscript
local set = vim.opt
local options = {
  -- global options
  swapfile = true,
  dir = '/tmp',
  laststatus = 2,
  hlsearch = false,
  incsearch = true,
  ignorecase = true,
  scrolloff = 12,
  guicursor = "a:block",
  hidden = true,
  signcolumn = "auto",
  -- window-local options
  number = true,
  relativenumber = true,
  wrap = false,
  colorcolumn = "80",
  -- buffer-local options
  expandtab = true,
  termguicolors = true,                     -- True color support
  background = "dark",
  --[[ opt.completeopt = {                  -- Completion options (for deoplete)
         'menuone',
         'noinsert',
         'noselect',
       }
  --]]
  -- opt.expandtab = true                   -- Use spaces instead of tabs
  -- opt.hidden = true                      -- Enable background buffers
  -- opt.ignorecase = true                  -- Ignore case
  -- opt.joinspaces = false                 -- No double spaces with join
  -- opt.list = true                        -- Show some invisible characters
  scrolloff = 12,                           -- Lines of context
  shiftround = true,                        -- Round indent
  shiftwidth = 2,                           -- Size of an indent
  -- opt.sidescrolloff = 8                  -- Columns of context
  smartindent = true,                       -- Insert indents automatically
  -- opt.splitbelow = true                  -- Put new windows below current
  -- opt.splitright = true                  -- Put new windows right of current
  tabstop = 2,                              -- Number of spaces tabs count for
  wildmode = {'list', 'longest'},           -- Command-line completion mode
  wrap = false,                             -- Disable line wrap
}

for k, v in pairs(options) do
  set[k] = v
end


-- Below are some things we could do instead

-- Global options
local o = vim.o
-- Window-local options
local wo = vim.wo
-- Buffer-local options
local bo = vim.bo
-- Vim commands
local cmd = vim.cmd
cmd "colorscheme gruvbox"                   -- Put your favorite colorscheme here
