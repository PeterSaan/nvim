vim.pack.add({
	"https://github.com/andweeb/presence.nvim",
})

local presence = require("presence")
presence.setup({
	neovim_image_text = "Neovim BTW",
	main_image = "file",
})
