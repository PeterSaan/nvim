local capabilities = require("cmp_nvim_lsp").default_capabilities()
local vuels_path = vim.fn.expand("~/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server")

---@type vim.lsp.Config
return {
	capabilities = capabilities,
	cmd = { "typescript-language-server", "--stdio" },
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vuels_path,
				languages = { "vue" }
			}
		}
	},
	filetypes = { "javascript", "typescript", "vue", "javascriptreact", "typescriptreact", "javascript.tsx", "typescript.tsx" },
	root_markers = { "package.json", "package-lock.json", "bun.lock" },
}
