local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
	capabilities = capabilities,
	cmd = { "asm-lsp" },
	filetypes = { "asm", "nasm" }
}
