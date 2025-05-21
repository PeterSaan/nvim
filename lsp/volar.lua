local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
	capabilities = capabilities,
	cmd = { "vue_language_server", "--stdio" },
	root_markers = { "package.json" },
}
