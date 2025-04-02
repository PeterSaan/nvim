return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    	},
	lazy = false,
	config = function()
		require("neo-tree").setup{
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
				}
			},
			deafult_component_configs = {
				symlink_target = true,
			},
			window = {
				mappings = {
					["a"] = {
						"add",
						config = {
							show_path = "relative"
						}
					},
					["m"] = {
						"move",
						config = {
							show_path = "relative"
						}
					},
					["c"] = {
						"copy",
						config = {
							show_path = "relative"
						}
					}
				}
			}
		}
	end
}
