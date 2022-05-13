local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

keymap("n", "<C-n>", ":NvimTreeToggle<CR>", default_opts)
keymap("n", "<C-b>", ":bNext<CR>", default_opts)
