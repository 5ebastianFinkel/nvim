local opts = { noremap = true, silent = true}

-- shortwn function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", opts)
keymap("t", "jk", "<C-\\><C-n>", opts)

-- Center screen when moving cursor or switching search results
-- for better navigation 
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Center search results
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

-- Better indent
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP', opts)

-- Delete single characters without saving into buffer 
keymap("n", "x", '"_x', opts)
-- Switch buffer
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", opts)

--- Move selected line / block of text in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv", opts) -- move highlighted code one line up
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Moving between windows 
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resizing panes with arrow keys
keymap("n", "<Left>", ":vertical resize +2CR>", opts)
keymap("n", "<Right>", ":vertical resize -2<CR>", opts)
keymap("n", "<Up>", ":resize -2<CR>", opts)
keymap("n", "<Down>", ":resize +2<CR>", opts)

-- Stop arrow keys working in insert mode 
keymap("i", "<Left>", "<nop>", opts)
keymap("i", "<Right>", "<nop>", opts)
keymap("i", "<Up>", "<nop>", opts)
keymap("i", "<Down>", "<nop>", opts)


-----------------------
--- Plugin Keybinds ---
-----------------------

-- nvim-tree
keymap("n", "<leader>et", ":NvimTreeToggle<CR>", opts) -- toggle file explorer
-- keymap("n", "<leader>ef", ":NvimTreeFocus<CR>", opts) -- focus file explorer
keymap("n", "<leader>ef", ":NvimTreeFindFile<CR>", opts) -- find file explorer
