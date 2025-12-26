return {
	-- {
	-- 	"vague-theme/vague.nvim",
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other plugins
	-- 	config = function()
	-- 		require("vague").setup({
	-- 			styles = {
	-- 				bold = false,
	-- 				italic = false,
	-- 				transparency = true,
	-- 			},
	-- 		})
	-- 		vim.cmd("colorscheme vague")
	-- 	end,
	-- },
	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				styles = {
					bold = false,
					italic = false,
					transparency = true,
				},
			})
			vim.cmd("colorscheme kanagawa")
		end,
	},

	-- {
	-- 	"powrhouseofthecell/colorbuddy.nvim",
	-- 	config = function()
	-- 		vim.cmd.colorscheme("gruvbuddy")
	-- 	end,
	-- },

	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			styles = {
	-- 				bold = true,
	-- 				italic = false,
	-- 				transparency = true,
	-- 			},
	-- 		})
	-- 		vim.cmd("colorscheme catppuccin-mocha")
	-- 	end,
	-- },

	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			styles = {
	-- 				bold = true,
	-- 				italic = false,
	-- 				transparency = true,
	-- 			},
	-- 		})
	-- 		vim.cmd("colorscheme rose-pine")
	-- 	end,
	-- },
}
