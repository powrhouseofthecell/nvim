local map = vim.keymap.set

--------------------------------------------------------------------

-- TELESCOPE
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {
    desc = 'Telescope find files'
})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {
    desc = 'Telescope live grep'
})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {
    desc = 'Telescope buffers'
})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {
    desc = 'Telescope help tags'
})

--------------------------------------------------------------------

-- NVIM TREE
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', {
    noremap = true,
    silent = true
})
-- vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

--------------------------------------------------------------------

-- BUFFERLINE
-- CHECK: what is the difference between vim.api.nvim_set_keymap and vim.keymap.set

-- local map = vim.api.nvim_set_keymap
-- local opts = { noremap = true, silent = true }

-- -- Move to previous/next (Tab)
-- map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
-- map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)

-- -- Re-order to previous/next (Alt)
-- map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
-- map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

-- -- Pin/unpin buffer
-- map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

-- -- Close the current buffer
-- map('n', '<A-x>', '<Cmd>BufferClose<CR>', opts)

-- -- Close all tabs but the current buffer
-- map('n', '<C-x>', '<Cmd>BufferCloseAllButCurrent<CR>', opts)
-- Good one but don't need this much
-- map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)

--------------------------------------------------------------------
