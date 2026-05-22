vim.pack.add({
	"https://github.com/nvim-telescope/telescope.nvim",
})

local tsBuiltin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", tsBuiltin.find_files, { desc = "Telescope find all files" })
vim.keymap.set("n", "<C-p>", tsBuiltin.git_files, { desc = "Telescope find git files" })
vim.keymap.set("n", "<leader>pg", tsBuiltin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>ls", tsBuiltin.treesitter, { desc = "Lists functions and variables from Treesitter!" })
