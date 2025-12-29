local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

local langServers = {
	"arduinols",
	"asmls",
	"bashls",
	"clangd",
	"cssls",
	"docker_compose_ls",
	"dockerls",
	"emmetls",
	"gopls",
	"html",
	"intelephense",
	"luals",
	"neocmake",
	"py",
	"sveltels",
	"tailwindcss",
	"tsls",
	"vuels",
}

local function lspRestart()
	vim.lsp.enable(langServers, false)
	vim.lsp.enable(langServers, true)
end

local map = vim.keymap.set
vim.g.mapleader = " "

map("n", "<leader>s", vim.cmd.w)
map("n", "<leader>w", vim.cmd.wq)
map("n", "<leader>e", vim.cmd.q)
map("i", "<C-h>", "<Left>")
map("i", "<C-l>", "<Right>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("n", "<leader>ow", vim.diagnostic.open_float)
map("n", "<leader>res", lspRestart)
map("n", "K", vim.lsp.buf.hover)
map("n", "<leader>gd", vim.lsp.buf.definition)
map("n", "<leader>gr", vim.lsp.buf.references)
map("n", "<leader>ca", vim.lsp.buf.code_action)
map("n", "<leader>f", vim.lsp.buf.format)
map("n", "<C-n>", ":Neotree filesystem toggle float<CR>")

vim.lsp.enable(langServers)
vim.diagnostic.config({ virtual_text = true })

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	checker = { enabled = true },
})
