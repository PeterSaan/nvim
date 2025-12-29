return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		local sources = {
			null_ls.builtins.formatting.prettierd.with({
				env = {
					string.format(
						"PRETTIERD_DEFAULT_CONFIG=%s",
						vim.fn.expand("~/dotfiles/nvim/utils/formatter/.prettierrc")
					),
					"PRETTIERD_LOCAL_PRETTIER_ONLY=true"
				},
			}),
			null_ls.builtins.formatting.stylua,
		}

		null_ls.setup({
			sources = sources,
		})
	end,
}
