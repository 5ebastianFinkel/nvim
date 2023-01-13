
local opts = {noremap = true, silent = true}

local keymap = vim.api.nvim_set_keymap

local found, harpoon_marks = pcall(require, 'harpoon.marks')

-- keymap("n", "<Leader>ha", "harpoon_marks")
