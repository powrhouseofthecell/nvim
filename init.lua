require("config.lazy")

require("config.options")
require("config.keymaps")

require("plugins.barbar")
require("plugins.mason")
require("plugins.nvim-tree")
require("plugins.telescope")

vim.cmd [[
  augroup NvimTreeTabs
    autocmd!
    autocmd BufEnter * if &filetype == 'NvimTree' | setlocal showtabline=0 | endif
    autocmd BufLeave * if &filetype == 'NvimTree' | setlocal showtabline=2 | endif
  augroup END
]]
