return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = 'Telescope find all files' })
		vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = 'Telescope find git files' })
		vim.keymap.set("n", "<leader>pg", builtin.live_grep, { desc = "Telescope live grep" })
	end
}
