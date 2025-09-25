local capabilities = require("cmp_nvim_lsp").default_capabilities()

---@type vim.lsp.Config
return {
	capabilities = capabilities,
	cmd = {
		"arduino-language-server",
		"-clangd", "~/.local/share/nvim/mason/bin/clangd",
		"-cli", "/usr/bin/arduino-cli",
		"-cli-config", "~/.arduino15/arduino-cli.yaml",
		"-fqbn", "esp32:esp32:esp32",
	},
	filetypes = { "arduino" },
}
