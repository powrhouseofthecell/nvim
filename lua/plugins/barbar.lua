return {
	"romgrk/barbar.nvim",
	config = function()
		require("barbar").setup({
			sidebar_filetypes = {
				-- Enable offset for Neo-tree
				["neo-tree"] = { event = "BufWinLeave" },
			},
		})
	end,
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {},
	version = "^1.0.0",
}
