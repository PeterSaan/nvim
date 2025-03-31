local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
	capabilities = capabilities,
	cmd = { "emmet-ls", "--stdio" },
	filetypes = { "css", "html", "javascriptreact", "typescriptreact", "vue" }
}
