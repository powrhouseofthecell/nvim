return {
	-- {
	-- 	"rebelot/kanagawa.nvim",
	-- 	config = function()
	-- 		require("kanagawa").setup({
	-- 			styles = {
	-- 				bold = false,
	-- 				italic = false,
	-- 				transparency = true,
	-- 			},
	-- 		})
	-- 		vim.cmd("colorscheme kanagawa")
	-- 	end,
	-- },

	-- {
	-- 	"powrhouseofthecell/colorbuddy.nvim",
	-- 	config = function()
	-- 		vim.cmd.colorscheme("gruvbuddy")
	-- 	end,
	-- },

	-- {
	--     'RRethy/base16-nvim',
	--     config = function()
	--         require('base16-colorscheme').with_config({
	--             telescope = true,
	--             indentblankline = true,
	--             notify = true,
	--             ts_rainbow = true,
	--             cmp = true,
	--             illuminate = true,
	--             dapui = true
	--         })
	--     end
	-- }

	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				styles = {
					bold = true,
					italic = false,
					transparency = true,
				},
			})
			vim.cmd("colorscheme catppuccin-mocha")
		end,
	},

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
