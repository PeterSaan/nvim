local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
	capabilities = capabilities,
	cmd = { "bash-language-server", "start" },
	filetypes = { "bash", "sh" }
}
