local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
	capabilities = capabilities,
	cmd = { "docker-compose-langserver", "--stdio" },
	filetypes = { "yaml.docker-compose" }
}
