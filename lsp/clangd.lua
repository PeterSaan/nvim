local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
	capabilities = capabilities,
	cmd = { "clangd" },
	filetypes = { "c", "cpp", "h" },
	root_markers = { "compile_commands.json", ".clangd", ".git" },
	on_init = function(client, init_result)
		if init_result.offsetEncoding then
			client.offset_encoding = init_result.offsetEncoding
		end
	end,
	on_attach = function(_, bufnr)
		vim.api.nvim_buf_create_user_command(bufnr, 'LspClangdSwitchSourceHeader', function()
			switch_source_header(bufnr)
		end, { desc = 'Switch between source/header' })

		vim.api.nvim_buf_create_user_command(bufnr, 'LspClangdShowSymbolInfo', function()
			symbol_info()
		end, { desc = 'Show symbol info' })
	end,
}
