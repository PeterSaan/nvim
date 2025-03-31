local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
	capabilities = capabilities,
	cmd = {
		"arduino-language-server",
		"-clangd", "/usr/lib/llvm-15/bin/clangd",
		"-cli", "/snap/bin/arduino-cli",
		"-cli-config", "~/snap/arduino-cli/57/.arduino15/arduino-cli.yaml",
		"-fqbn", "esp8266:esp8266:nodemcuv2", -- esp8266:esp8266:generic or esp32:esp32:esp32
	},
	filetypes = { "arduino" }
}
