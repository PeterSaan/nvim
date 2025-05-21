local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
	capabilities = capabilities,
	cmd = { "typescript-language-server", "--stdio" },
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = "~/.local/share/nvim/mason/bin/vue-language-server",
				languages = { "javascript", "typescript", "vue" }
			}
		}
	},
	filetypes = { "javascript", "typescript", "vue", "javascriptreact", "typescriptreact", "javascript.tsx", "typescript.tsx" }
}
