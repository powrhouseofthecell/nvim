return {
	"williamboman/mason.nvim",
	dependencies = { "williamboman/mason-lspconfig.nvim", "WhoIsSethDaniel/mason-tool-installer.nvim" },
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"emmet_ls",
				"gopls",
				"rust_analyzer",
				-- "lua-language-server",
				-- "json-lsp",
				-- "golangci-lint",
				-- "dockerfile-language-server",
				-- "dotenv"
				-- "golangci-lint"
				-- "dockerfile-language-server"
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettierd", -- prettier formatter
				"stylua", -- lua formatter
				"gopls", -- go formatter
				"eslint_d", -- eslint
			},
		})
	end,
}
