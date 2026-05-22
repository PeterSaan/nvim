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

vim.keymap.set("n", "<leader>res", lspRestart)
vim.lsp.enable(langServers)
