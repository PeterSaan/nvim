return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup{
				max_concurrent_installers = 2,
			}
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function ()
			require("mason-lspconfig").setup {
				automatic_installation = true,
				ensure_installed = { "clangd", "ts_ls", "html", "emmet_ls", "tailwindcss", "arduino_language_server", "gopls", "volar" },
			}
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.html.setup{ capabilities = capabilities, }
			lspconfig.emmet_ls.setup{ capabilities = capabilities, }
			lspconfig.tailwindcss.setup{ capabilities = capabilities, }
			lspconfig.intelephense.setup{ capabilities = capabilities, }
			lspconfig.clangd.setup{ capabilities = capabilities, }
			lspconfig.neocmake.setup{ capabilities = capabilities, }
			lspconfig.docker_compose_language_service.setup{ capabilities = capabilities }
			lspconfig.dockerls.setup{ capabilities = capabilities }
			lspconfig.bashls.setup{ capabilities = capabilities }
			lspconfig.asm_lsp.setup{ capabilities = capabilities }
			lspconfig.pylsp.setup{ capabilities = capabilities }
			lspconfig.gopls.setup{ capabilities = capabilities }

		end,
	},
}
