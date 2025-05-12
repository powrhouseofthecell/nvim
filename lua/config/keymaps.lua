local map = vim.keymap.set

-- Don't put single character in the register
map("n", "x", '"_x')
-------------------------------------------------------------------
--- Gitsigns
map("v", "<leader>rh", "<Cmd>Gitsigns reset_hunk<CR>") -- Reset Selected Hunk
map("v", "<leader>sh", "<Cmd>Gitsigns stage_hunk<CR>") -- Stage Selected Hunk
-------------------------------------------------------------------
-- ThePrimeagen Key Maps

map("v", "J", ":m '>+1<cr>gv=gv")
map("v", "K", ":m '<-2<cr>gv=gv")

map("n", "J", "mzJ`z") -- Joining lines with J, the cursor will stay at the original position
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("x", "<leader>p", [["_dP]])

-- with <leader>Y yank into the system register
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- replace the word you are on, globally
--------------------------------------------------------------------
-- Move between splits

-- Remap Ctrl + h/j/k/l to navigate between windows
map("n", "<C-h>", "<C-w>h", {
	noremap = true,
	silent = true,
})
map("n", "<C-j>", "<C-w>j", {
	noremap = true,
	silent = true,
})
map("n", "<C-k>", "<C-w>k", {
	noremap = true,
	silent = true,
})
map("n", "<C-l>", "<C-w>l", {
	noremap = true,
	silent = true,
})

--------------------------------------------------------------------

-- Harpoon Start
map("n", "<leader>hh", function()
	require("harpoon.ui").toggle_quick_menu()
end, {
	desc = "Toggle Harpoon quick menu",
})

map("n", "<leader>ha", function()
	require("harpoon.mark").add_file()
end, {
	desc = "Add file to Harpoon",
})

map("n", "<leader>hn", function()
	require("harpoon.ui").nav_next()
end, {
	desc = "Move to next in Harpoon list",
})

map("n", "<leader>hp", function()
	require("harpoon.ui").nav_prev()
end, {
	desc = "Move to previous in Harpoon list",
})

map("n", "<leader>hc", function()
	require("harpoon.mark").clear_all()
end, {
	desc = "Clear all marks in Harpoon",
})

map("n", "<leader>ht", function()
	require("telescope").extensions.harpoon.marks()
end, {
	desc = "Show marks in Telescope",
})

map("n", "<leader>1", function()
	require("harpoon.ui").nav_file(1)
end, { desc = "Switch to file 1" })

map("n", "<leader>2", function()
	require("harpoon.ui").nav_file(2)
end, { desc = "Switch to file 2" })

map("n", "<leader>3", function()
	require("harpoon.ui").nav_file(3)
end, { desc = "Switch to file 3" })

map("n", "<leader>4", function()
	require("harpoon.ui").nav_file(4)
end, { desc = "Switch to file 4" })

map("n", "<leader>5", function()
	require("harpoon.ui").nav_file(5)
end, { desc = "Switch to file 5" })

map("n", "<leader>6", function()
	require("harpoon.ui").nav_file(6)
end, { desc = "Switch to file 6" })

map("n", "<leader>7", function()
	require("harpoon.ui").nav_file(7)
end, { desc = "Switch to file 7" })

--------------------------------------------------------------------

-- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {
	desc = "Telescope find files",
})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
	desc = "Telescope live grep",
})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {
	desc = "Telescope buffers",
})

vim.keymap.set("n", "<leader>gs", builtin.git_status, {
	desc = "Telescope git status",
})

vim.keymap.set("n", "<leader>gb", builtin.git_branches, {
	desc = "Telescope git branches",
})

vim.keymap.set("n", "<leader>gc", builtin.git_commits, {
	desc = "Telescope git commits",
})

vim.keymap.set("n", "<leader>fh", builtin.help_tags, {
	desc = "Telescope help tags",
})

--------------------------------------------------------------------

-- NvimTree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle toggle<CR>", {
	noremap = true,
	silent = true,
})

--------------------------------------------------------------------

-- Resize Buffers Start
map("n", "<leader>l", "<cmd> SmartResizeRight <cr>")
map("n", "<leader>h", "<cmd> SmartResizeLeft <cr>")
map("n", "<leader>k", "<cmd> SmartResizeUp <cr>")
map("n", "<leader>j", "<cmd> SmartResizeDown <cr>")
-- Resize Buffers Start

--------------------------------------------------------------------

-- Maximizer Start
map("n", "<leader>mx", function()
	require("maximize").toggle()
end, {
	desc = "Toggle Maximize",
})
-- Maximizer End

--------------------------------------------------------------------

-- BUFFERLINE
-- CHECK: what is the difference between vim.api.nvim_set_keymap and vim.keymap.set

local opts = { noremap = true, silent = true }

-- Move to previous/next (Tab)
map("n", "<Tab>", "<Cmd>BufferNext<CR>", opts)
map("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", opts)

-- Re-order to previous/next (Alt)
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)

-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)

-- Close the current buffer
map("n", "<A-x>", "<Cmd>BufferClose<CR>", opts)

-- Close all tabs but the current buffer
map("n", "<C-x>", "<Cmd>BufferCloseAllButCurrent<CR>", opts)
-- Good one (but hardly using)
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)

--------------------------------------------------------------------
--- Toggle Term
map("n", "<leader>tt", "<Cmd>ToggleTerm direction=float<CR>", opts)

--------------------------------------------------------------------

-- Toggle tabline visibility
function ToggleTabline()
	if vim.o.showtabline == 0 then
		vim.o.showtabline = 2
		print("Tabline: ON")
	else
		vim.o.showtabline = 0
		print("Tabline: OFF")
	end
end

vim.keymap.set("n", "<leader>-", ToggleTabline, { noremap = true, silent = true })

--------------------------------------------------------------------
--- Vim Fugitive

vim.keymap.set("n", "<leader>g", function()
	vim.cmd("Git")
end, { noremap = true, silent = true, desc = "Open Fugitive Git" })

vim.keymap.set("n", "<leader>gc", function()
	vim.cmd("Git commit")
end, { noremap = true, silent = true, desc = "Git Fugitive commit" })

vim.keymap.set("n", "<leader>gp", function()
	vim.cmd("Git push")
end, { noremap = true, silent = true, desc = "Git Fugitive push" })
