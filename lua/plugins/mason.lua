return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
          "lua-language-server", "stylua", "typescript-language-server",
          "tailwindcss-language-server", "html-lsp", "css-lsp", "prettier", "eslint-lsp", "gopls"
        }
    }
}
