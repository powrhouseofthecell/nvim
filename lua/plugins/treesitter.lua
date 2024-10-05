return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",  -- Automatically update parsers after installation
   config = function()
      require('nvim-treesitter.configs').setup {
         ensure_installed = { "vim", "markdown", "markdown_inline", "lua", "vimdoc", "html", "css", "javascript",
            "typescript", "tsx", "go", "rust" },
         highlight = {
            enable = true,     -- false will disable the whole extension
            additional_vim_regex_highlighting = false
         },
         indent = {
            enable = true
         }
      }
   end
}
