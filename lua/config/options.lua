local opt = vim.opt
local o = vim.o
local g = vim.g

g.mapleader = " "

o.number = true
o.relativenumber = true
o.numberwidth = 2
o.ruler = false

-- Disable the OG nvim intro
opt.shortmess:append "sI"

-- Disable ~ on the lines
vim.opt.fillchars = {
    eob = ' '
}

-- ovim.opt.fillchars = "eob: ,vert: "
