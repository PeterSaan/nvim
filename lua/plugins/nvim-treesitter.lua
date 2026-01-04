local langs = {
	"bash",
	"c",
	"cmake",
	"cpp",
	"css",
	"dockerfile",
	"ecma",
	"git_config",
	"git_rebase",
	"gitattributes",
	"gitcommit",
	"gitignore",
	"go",
	"gomod",
	"gosum",
	"html",
	"hyprlang",
	"javascript",
	"json",
	"json5",
	"jsx",
	"kitty",
	"make",
	"markdown",
	"markdown_inline",
	"php",
	"php_only",
	"ssh_config",
	"svelte",
	"tsx",
	"typescript",
	"vue",
	"yaml",
}

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	init = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = langs,
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
	config = function()
		require("nvim-treesitter").install(langs)
	end,
}
