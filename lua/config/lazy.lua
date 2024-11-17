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

-- This is also a good place to setup other settings (vim.opt etc.)

local map = vim.keymap.set

vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

map("n", "<C-s>", vim.cmd.w)
map("n", "<C-w>", vim.cmd.wq)
map("i", "<C-h>", "<Left>", {})
map("i", "<C-l>", "<Right>", {})
map("i", "<C-j>", "<Down>", {})
map("i", "<C-k>", "<Up>", {})

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- Import your plugins
		{ import = "plugins" },
	},
	-- Configure any other settings here. See the docs for more details.
	-- Automatically check for plugin updates
	checker = { enabled = true },
})
