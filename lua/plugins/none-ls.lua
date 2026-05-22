vim.pack.add({
	"https://github.com/nvimtools/none-ls.nvim"
})

local none = require("null-ls")
none.setup({
		sources = {
			none.builtins.formatting.prettierd.with({
				env = {
					string.format(
						"PRETTIERD_DEFAULT_CONFIG=%s",
						vim.fn.expand("$XDG_CONFIG_HOME/nvim/utils/formatter/.prettierrc")
					),
					"PRETTIERD_LOCAL_PRETTIER_ONLY=true"
				},
			}),
			none.builtins.formatting.stylua,
		},
})
