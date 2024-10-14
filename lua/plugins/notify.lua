return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")
		notify.setup({
			stages = "fade",
			timeout = 3000,
			max_width = 50,
		})
		vim.notify = notify
	end,
}
