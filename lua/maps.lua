-- Shorten vim api function name
local map = vim.api.nvim_set_keymap
-- Default options for mappings
local options = { noremap = true, silent = true }
-- Options for teminal mode mappings
local term_options = { silent = true }

-- map the leader key to space
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
--]]

-- Normal mode options
map('n', '<cr>', ':nohlsearch<cr>', options)
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)

-- Better window navigation
map("n", "<C-h>", "<C-w>h", options)
map("n", "<C-j>", "<C-w>j", options)
map("n", "<C-k>", "<C-w>k", options)
map("n", "<C-l>", "<C-w>l", options)

-- New terminal window below current (small)
map('n', '<leader>t', ':sp<CR><C-w>>j:term<CR>20<C-W>-i', options)
map("n", "<leader>e", ":Lex 30<cr>", options)
-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>", options)
map("n", "<C-Down>", ":resize -2<CR>", options)
map("n", "<C-Left>", ":vertical resize -2<CR>", options)
map("n", "<C-Right>", ":vertical resize +2<CR>", options)

-- Visual mode options
-- Stay in indent mode
map("v", "<", "<gv", options)
map("v", ">", ">gv", options)

-- Move text up and down
map("v", "<A-j>", ":m .+1<CR>==", options)
map("v", "<A-k>", ":m .-2<CR>==", options)
map("v", "p", '"_dP', options)

-- Visual Block options
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv", options)
map("x", "K", ":move '<-2<CR>gv-gv", options)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", options)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", options)

-- Terminal mode options
-- Better terminal navigation
map("t", "<C-h>", "<C-\\><C-N><C-w>h", term_options)
map("t", "<C-j>", "<C-\\><C-N><C-w>j", term_options)
map("t", "<C-k>", "<C-\\><C-N><C-w>k", term_options)
map("t", "<C-l>", "<C-\\><C-N><C-w>l", term_options)
map("t", "<esc>", "<C-\\><C-N>", term_options)
