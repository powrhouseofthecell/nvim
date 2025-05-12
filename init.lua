-- TODO: Rename to plugins

require("config.lazy")

require("config.options")
require("config.keymaps")

-- REMOVE THIS
-- require("plugins.mason")
-- require("plugins.lspconfig")
-- require("plugins.nvim-cmp")

-- require("plugins.auto-close")
-- require("plugins.colorscheme")
-- require("plugins.gitsigns")
-- require("plugins.harpoon")
-- require("plugins.lualine")
-- require("plugins.maximize")
-- require("plugins.neo-tree")
-- require("plugins.notify")
-- require("plugins.smart-splits")
-- require("plugins.tabline")
-- require("plugins.telescope")
-- require("plugins.treesitter")
-- require("plugins.vim-fugitive")
-- require("plugins.vim-surround")
-- require("plugins.web-dev-icons")

-- Function to clear all registers in Neovim
local function clear_registers()
	-- Iterate through the ASCII values of registers a-z, A-Z, and 0-9
	for i = 97, 122 do -- a-z
		vim.fn.setreg(string.char(i), "")
	end
	for i = 65, 90 do -- A-Z
		vim.fn.setreg(string.char(i), "")
	end
	for i = 48, 57 do -- 0-9
		vim.fn.setreg(string.char(i), "")
	end
	-- Clear special registers
	vim.fn.setreg("-", "")
	vim.fn.setreg("/", "")
	vim.fn.setreg('"', "")
	vim.fn.setreg("*", "")
	vim.fn.setreg("+", "")
end

-- Highlight when yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", {
		clear = true,
	}),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Create a user command to clear registers
vim.api.nvim_create_user_command("ClearRegisters", clear_registers, {
	desc = "Clear all registers",
})

-- Sets colors to line numbers Above, Current and Below  in this order
function LineNumberColors()
	-- vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#51B3EC", bold = true })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "gray", bold = false })
	-- vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#FB508F", bold = true })
end
LineNumberColors()

-- Remove italics from all highlight groups (brute-force)
for _, group in ipairs(vim.fn.getcompletion("@", "highlight")) do
	local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
	if hl.italic then
		hl.italic = false
		vim.api.nvim_set_hl(0, group, hl)
	end
end
