-- Shorten vim api function name
local map = vim.api.nvim_set_keymap
-- Default options for mappings
local options = { noremap = true, silent = true }
-- Options for teminal mode mappings
local term_options = { silent = true }

-- Map the leader key to space
map('', '<Space>', '<Nop>', options)
-- 'vim.g' sets global variables
vim.g.mapleader = ' '

--[[ Modes
      c = command
      i = insert
      n = normal
      t = terminal
      v = visual
      x = visual-block
]]

  -- After searching, pressing enter again removes lingering highlights
  map('n', '<cr>', ':nohlsearch<cr>', options)
  -- Switch between buffers, one-off
  map('n', '<leader>bn', ':bnext<cr>', options)
  map('n', '<leader>bp', ':bprev<cr>', options)
  -- Switch between buffers, easy repeat
  map('n', '<S-l>', ':bnext<cr>', options)
  map('n', '<S-h>', ':bprev<cr>', options)
  -- Better window navigation
  map("n", "<leader>h", "<C-w>h", options)
  map("n", "<leader>j", "<C-w>j", options)
  map("n", "<leader>k", "<C-w>k", options)
  map("n", "<leader>l", "<C-w>l", options)
  -- New terminal window below current (small)
  map('n', '<leader>T', ':sp<CR><C-w>j:term<CR>20<C-W>-i', options)
  -- Open netrw file explorer to left (small)
  map("n", "<leader>e", ":Lex 30<cr>", options)
  -- Resize with arrows
  map("n", "<A-Up>", ":resize +2<CR>", options)
  map("n", "<A-Down>", ":resize -2<CR>", options)
  map("n", "<A-Left>", ":vertical resize -2<CR>", options)
  map("n", "<A-Right>", ":vertical resize +2<CR>", options)
  -- Heavenly window movement
  map("n", "<leader>wn", "<C-W><C-W>", options)
  map("n", "<leader>wp", "<C-W>W", options)
  -- Source file
  map('n', '<leader>.', ':luafile %<cr>', options)
  -- Source file and run PaqSync
  map('n', '<leader>>', ':luafile %<cr>:PaqSync<cr>', options)
  -- Find file
  map('n', '<leader>ff', ':e ', options)
  -- Tab creation and navigation
  map('n', '<leader>tt', ':tabnew<cr>:e ', options)
  map('n', '<leader>n', ':tabnext<cr>', options)
  map('n', '<leader>p', ':tabprev<cr>', options)
  -- Jump files
  map('n', '<leader>ji', ':tabnew<cr>:e ~/.config/nvim/init.lua<cr>', options)
  map('n', '<leader>jm', ':tabnew<cr>:e ~/.config/nvim/lua/maps.lua<cr>', options)
  map('n', '<leader>jse', ':tabnew<cr>:e ~/.config/nvim/lua/settings.lua<cr>', options)
  map('n', '<leader>jst', ':tabnew<cr>:e ~/.config/nvim/lua/statusline.lua<cr>', options)


  -- Stay in indent mode
  map("v", "<", "<gv", options)
  map("v", ">", ">gv", options)
  -- Move text up and down
  map("v", "<A-j>", ":m .+1<CR>==", options)
  map("v", "<A-k>", ":m .-2<CR>==", options)
  map("v", "p", '"_dP', options)

  -- Move text up and down
  map("x", "J", ":move '>+1<CR>gv-gv", options)
  map("x", "K", ":move '<-2<CR>gv-gv", options)
  map("x", "<A-j>", ":move '>+1<CR>gv-gv", options)
  map("x", "<A-k>", ":move '<-2<CR>gv-gv", options)

  -- Better terminal navigation
  map("t", "<C-h>", "<C-\\><C-N><C-w>h", term_options)
  map("t", "<C-j>", "<C-\\><C-N><C-w>j", term_options)
  map("t", "<C-k>", "<C-\\><C-N><C-w>k", term_options)
  map("t", "<C-l>", "<C-\\><C-N><C-w>l", term_options)
  -- Easy exit terminal mode
  map("t", "<esc>", "<C-\\><C-N>", term_options)
