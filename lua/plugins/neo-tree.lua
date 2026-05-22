vim.pack.add({
	"https://github.com/nvim-neo-tree/neo-tree.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/MunifTanjim/nui.nvim",
})

local neotree = require("neo-tree")
local devicons = require("nvim-web-devicons")

devicons.setup()

neotree.setup({
	close_if_last_window = true,
	popup_border_style = "rounded",
	enable_git_status = true,
	sort_case_insensitive = true,
	filesystem = {
		filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_hidden = false,
		},
	},
	deafult_component_configs = {
		symlink_target = true,
	},
	window = {
		mappings = {
			["a"] = {
				"add",
				config = {
					show_path = "relative",
				},
			},
			["m"] = {
				"move",
				config = {
					show_path = "relative",
				},
			},
			["c"] = {
				"copy",
				config = {
					show_path = "relative",
				},
			},
		},
	},
})
