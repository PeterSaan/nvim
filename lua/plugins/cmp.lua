vim.pack.add({
	"https://github.com/hrsh7th/nvim-cmp",
	"https://github.com/hrsh7th/cmp-buffer",
	"https://github.com/hrsh7th/cmp-nvim-lsp",
	"https://github.com/L3MON4D3/LuaSnip",
	"https://github.com/saadparwaiz1/cmp_luasnip",
})

local cmp = require("cmp")
local cmpNvimLsp = require("cmp_nvim_lsp")
local luasnip = require("luasnip")
local cmpAutopairs = require("nvim-autopairs.completion.cmp")

cmpNvimLsp.setup()
luasnip.setup()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered({ max_height = 8 }),
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "luasnip" },
	}),
})

cmp.event:on({
	"confirm_done",
	cmpAutopairs.on_confirm_done(),
})
