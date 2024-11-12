return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		vim.keymap.set({"i", "n"}, "<leader>pf", ":Telescope git_files<CR>", {})
		vim.keymap.set({"i", "n"}, "<C-p>", ":Telescope git_files<CR>", {})
	end
}
