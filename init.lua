local map = vim.keymap.set

vim.opt.number = true
vim.opt.relativenumber = true

map("i", "<C-h>", "<Left>", {})
map("i", "<C-l>", "<Right>", {})
map("i", "<C-j>", "<Down>", {})
map("i", "<C-k>", "<Up>", {})

require("config.lazy")

