return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      	"MunifTanjim/nui.nvim",
      	-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filsesystem toggle left<CR>", {})

		require("neo-tree").setup({
			enable_git_status = true,
			window = {
				width = 30,
			},
		})
	end
}
