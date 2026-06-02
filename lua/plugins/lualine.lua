vim.pack.add({
	"https://github.com/nvim-lualine/lualine.nvim",
})

local lualine = require("lualine")
lualine.setup({
	options = {
		component_separators = { left = "|", right = "|" },
		disabled_filetypes = {
			statusline = { "neo-tree", "TelescopePrompt" },
			winbar = { "neo-tree", "TelescopePrompt" },
		},
		icons_enabled = true,
		section_separators = { left = "", right = "" },
		theme = "tokyonight-night",
	},
	sections = {
		lualine_x = { "filetype" },
		lualine_y = { "%L lines " },
	},
})
