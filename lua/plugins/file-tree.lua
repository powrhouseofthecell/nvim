-- return {
-- 	"nvim-neo-tree/neo-tree.nvim",
-- 	branch = "v3.x",
-- 	dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
-- 	config = function()
-- 		require("neo-tree").setup({
-- 			window = {
-- 				width = 35,
-- 			},
-- 			event_handlers = {
-- 				{
-- 					event = "neo_tree_buffer_enter",
-- 					handler = function(arg)
-- 						vim.cmd([[
--           setlocal relativenumber
--         ]])
-- 					end,
-- 				},
-- 			},
-- 			hide_root_node = false,
-- 			default_component_configs = {
-- 				git_status = {
-- 					symbols = {
-- 						unstaged = "✗", -- Icon for unstaged files
-- 						staged = "✓", -- Icon for staged files
-- 						unmerged = "", -- Icon for unmerged files
-- 						renamed = "➜", -- Icon for renamed files
-- 						deleted = "", -- Icon for deleted files
-- 						untracked = "★", -- Icon for untracked files
-- 						ignored = "◌", -- Icon for ignored files
-- 					},
-- 				},
-- 			},
-- 			renderer = {
-- 				highlight_git = true,
-- 				icons = {
-- 					show = {
-- 						git = true,
-- 						folder_arrow = true,
-- 						file = true,
-- 					},
-- 				},
-- 			},
-- 		})
-- 	end,
-- }

--------------------------------------------------------------------------------------------------

return {
	"nvim-tree/nvim-tree.lua",
	requires = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-web-devicons").setup({
			override = {},
			default = true,
		})
		require("nvim-tree").setup({
			view = {
				relativenumber = true,
				number = true,
				width = 30,
				side = "left",
			},
			renderer = {
				root_folder_label = false,
				icons = {
					webdev_colors = true,
					glyphs = {
						default = "",
						symlink = "",
						folder = {
							arrow_closed = "",
							arrow_open = "",
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
							symlink_open = "",
						},
						git = {
							unstaged = "x",
							staged = "◉",
							unmerged = "",
							renamed = "➜",
							untracked = "∅",
							deleted = "✘",
							ignored = "◌",
						},
					},
					show = {
						git = true,
						folder = true,
						file = true,
						folder_arrow = true,
					},
				},
			},
		})
	end,
}
