vim.pack.add({
	"https://github.com/mfussenegger/nvim-lint",
})

local linter = require("lint")
linter.linters_by_ft = {
	javascript = { "eslint_d" },
	typescript = { "eslint_d" },
	json = { "eslint_d" },
	jsonc = { "eslint_d" },
	json5 = { "eslint_d" },
	vue = { "eslint_d" },
}

vim.env.ESLINT_D_PPID = vim.fn.getpid()
vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "TextChanged", "TextChangedI" }, {
	callback = function()
		linter.try_lint()
	end,
})
