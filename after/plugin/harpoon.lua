
local opts = {noremap = true, silent = true, expr = false}

local keymap = vim.api.nvim_set_keymap
-- require("harpoon").setup({ ... })
local found, harpoon_mark = pcall(require, 'harpoon.mark')
if not found then
  return
end

local ui_found, ui = pcall(require, 'harpoon.ui')
if not ui_found then
  return
end

keymap("n", "<leader>ha", '<Cmd>lua require("harpoon.mark").add_file()<CR>', opts)
keymap('n', '<leader>hh',  '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
