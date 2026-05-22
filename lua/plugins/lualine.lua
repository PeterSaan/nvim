vim.pack.add({
	"https://github.com/nvim-lualine/lualine.nvim",
})

local lualine = require("lualine")

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "tokyonight-night"
	}
})
