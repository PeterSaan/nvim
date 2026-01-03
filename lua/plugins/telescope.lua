return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = 'Telescope find all files' })
		vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = 'Telescope find git files' })
		vim.keymap.set("n", "<leader>pg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>ls", builtin.treesitter, { desc = "Lists functions and variables from Treesitter!"})
	end
}
