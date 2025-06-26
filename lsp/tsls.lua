local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
	capabilities = capabilities,
	cmd = { "typescript-language-server", "--stdio" },
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vim.fn.expand("~/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server"),
				languages = { "javascript", "typescript", "vue" }
			}
		}
	},
	filetypes = { "javascript", "typescript", "vue", "javascriptreact", "typescriptreact", "javascript.tsx", "typescript.tsx" },
	root_markers = { "package.json" },
}
