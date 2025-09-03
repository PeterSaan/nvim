local capabilities = require("cmp_nvim_lsp").default_capabilities()

---@type vim.lsp.Config
return {
	capabilities = capabilities,
	cmd = { "emmet-ls", "--stdio" },
	filetypes = { "css", "html", "javascriptreact", "typescriptreact", "vue" }
}
