local opt = vim.opt
local o = vim.o
local g = vim.g

-- Fat cursor all around
-- opt.guicursor = ""

g.mapleader = " "

o.number = true
o.relativenumber = true
o.numberwidth = 4
o.ruler = false

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.wrap = false

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

-- opt.colorcolumn = "130"

-- Disable the OG nvim intro
opt.shortmess:append("sI")

-- Disable ~ on the lines
vim.opt.fillchars = {
	eob = " ",
}
-- vim.opt.fillchars = "eob: ,vert: "
