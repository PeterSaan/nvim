local capabilities = require("cmp_nvim_lsp").default_capabilities()

---@type vim.lsp.Config
return {
	capabilities = capabilities,
	cmd = { "docker-compose-langserver", "--stdio" },
	filetypes = { "yaml.docker-compose" }
}
