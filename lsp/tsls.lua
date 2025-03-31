local capabilities = require("cmp_nvim_lsp").default_capabilities()
local mason_registry = require("mason-registry")
local vue_ls_path = mason_registry.get_package("vue-language-server"):get_install_path() .. '/node_modules/@vue'

return {
	capabilities = capabilities,
	cmd = { "typescript-language-server", "--stdio" },
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vue_ls_path .. "/typescript-plugin",
				languages = { "javascript", "typescript", "vue" }
			}
		}
	},
	filetypes = { "javascript", "typescript", "vue", "javascriptreact", "typescriptreact", "javascript.tsx", "typescript.tsx" }
}
