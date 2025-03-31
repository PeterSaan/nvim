return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup{
				max_concurrent_installers = 2,
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			}
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function ()
			require("mason-tool-installer").setup{
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
			}
		end
	}
}
