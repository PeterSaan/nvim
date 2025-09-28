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
	root_dir = function(bufnr, on_dir)
		local fname = vim.api.nvim_buf_get_name(bufnr)
		local dir = vim.fn.fnamemodify(fname, ":p:h")

		while dir ~= "/" do
			-- look for any .ino file in this dir
			local inos = vim.fn.globpath(dir, "*.ino", false, true)
			if #inos > 0 then
				on_dir(dir)
				return
			end
			dir = vim.fn.fnamemodify(dir, ":h")
		end

		-- fallback: current working directory
		on_dir(vim.fn.getcwd())
	end,
}
