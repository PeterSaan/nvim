vim.o.winborder = "rounded"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.colorcolumn = "80"

vim.filetype.add({
	pattern = {
		["%.env%.[%w_.-]+"] = "sh",
	},
})

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
	callback = function()
		vim.cmd("checktime")
	end,
})

vim.api.nvim_create_user_command('PackUpdate', function()
	vim.pack.update()
end, {})

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
map("n", "K", vim.lsp.buf.hover)
map("n", "<leader>gd", ":Telescope lsp_definitions<CR>")
map("n", "<leader>ca", vim.lsp.buf.code_action)
map("n", "<leader>f", vim.lsp.buf.format)
map("n", "<C-n>", ":Neotree filesystem toggle float<CR>")

vim.diagnostic.config({ virtual_text = true })
