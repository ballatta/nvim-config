-- vim.opt behaves like 'set' function in vimscript
local set = vim.opt
local cmd = vim.cmd

vim.api.nvim_set_option("clipboard","unnamed")

-- Table of all our desired vim options
local options = {
  -- global options
  lazyredraw = true,
  dir = '/tmp',
  laststatus = 2,
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

  autochdir = true,

  -- buffer-local options
  swapfile = false,
  expandtab = true,
  termguicolors = true,                   -- True color support
  background = "dark",
  shiftround = true,                      -- Round indent
  shiftwidth = 2,                         -- Size of an indent
  sidescrolloff = 8,                      -- Columns of context
  smartindent = true,                     -- Insert indents automatically
  splitbelow = true,                      -- Put new windows below current
  splitright = true,                      -- Put new windows right of current
  tabstop = 2,                            -- Number of spaces tabs count for
  wildmode = {'list', 'longest'},         -- Command-line completion mode
}

-- Set each option
for k, v in pairs(options) do
  set[k] = v
end

vim.cmd(
[[
  hi ExtraWhitespace ctermbg=red guibg=red
  mat ExtraWhitespace /\s\+$/
  autocmd BufWritePre * :%s/\s\+$//e
]])

-- Lilypond filetype plugin, indent mode, and syntax-highlighting
cmd(
[[
  filetype off
  set runtimepath+=/opt/homebrew/Cellar/lilypond/2.22.2/share/lilypond/2.22.2/vim
  filetype on
  syntax on
]])
