vim.pack.add({
	"https://github.com/nvim-treesitter/nvim-treesitter",
})

local langs = {
	"arduino",
	"bash",
	"blade",
	"c",
	"c_sharp",
	"cmake",
	"cpp",
	"css",
	"desktop",
	"dockerfile",
	"fish",
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
	"http",
	"hyprlang",
	"ini",
	"javascript",
	"json",
	"json5",
	"jsx",
	"kconfig",
	"kitty",
	"lua",
	"make",
	"markdown",
	"markdown_inline",
	"php",
	"php_only",
	"powershell",
	"python",
	"qmljs",
	"rasi",
	"requirements",
	"rescript",
	"ssh_config",
	"svelte",
	"tmux",
	"tsx",
	"typescript",
	"vimdoc",
	"vue",
	"xml",
	"yaml",
}

local treesitter = require("nvim-treesitter")
treesitter.install(langs)

vim.api.nvim_create_autocmd("FileType", {
	pattern = langs,
	callback = function()
		vim.treesitter.start()
	end,
})
