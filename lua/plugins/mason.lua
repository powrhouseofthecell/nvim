return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "typescript-language-server",
      "tailwindcss-language-server",
      "html-lsp",
      "css-lsp",
      "prettier",
      "eslint-lsp",
      "gopls"
    }
  },
  config = function(_, opts)
    require("mason").setup()

    -- Ensure the tools specified in `ensure_installed` are installed
    local mason_registry = require("mason-registry")
    
    for _, tool in ipairs(opts.ensure_installed) do
      local package = mason_registry.get_package(tool)
      if not package:is_installed() then
        package:install()
      end
    end
  end
}

