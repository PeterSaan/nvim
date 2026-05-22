vim.pack.add({
	"https://github.com/folke/tokyonight.nvim",
})

local theme = require("tokyonight")
theme.setup({
	transparent = true,
	styles = {
		sidebars = "transparent",
	},
})

vim.cmd([[colorscheme tokyonight-night]])
