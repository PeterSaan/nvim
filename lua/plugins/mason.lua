vim.pack.add({
	"https://github.com/williamboman/mason.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"
})

local mason = require("mason")
local masonTool = require("mason-tool-installer")

mason.setup {
	max_concurrent_installers = 2,
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
}

masonTool.setup({
	ensure_installed = {
		"arduino-language-server",
		"bash-language-server",
		"clangd",
		"emmet-ls",
		"gopls",
		"html-lsp",
		"lua-language-server",
		"tailwindcss-language-server",
		"typescript-language-server",
		"vue-language-server"
	},
	integrations = {
		["mason-lspconfig"] = false,
		["mason-null-ls"] = false,
		["mason-nvim-dap"] = false
	}
})
