return {{
    "windwp/nvim-ts-autotag",
    ft = {"html", "javascript", "javascriptreact", "typescript", "typescriptreact"},
    config = function()
        require("nvim-ts-autotag").setup()
    end
}, {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
}}

