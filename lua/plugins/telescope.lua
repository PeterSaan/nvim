return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		vim.keymap.set({"i", "n"}, "<C-p>", ":Telescope find_files<CR>", {})
	end
}
