return {
	"mfussenegger/nvim-lint",
	config = function()
		vim.env.ESLINT_D_PPID = vim.fn.getpid()
		require("lint").linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			json = { "eslint_d" },
			jsonc = { "eslint_d" },
			json5 = { "eslint_d" },
			vue = { "eslint_d" }
		}
		vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "TextChanged", "TextChangedI" }, {
			callback = function ()
				require("lint").try_lint()
			end
		})
	end
}
