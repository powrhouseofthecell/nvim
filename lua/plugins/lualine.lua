-- Function to get the root folder name
local function get_root_folder()
	return "  " .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t") -- Get the last part of the current working directory
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "iceberg_dark",
				component_separators = {
					left = "",
					right = "",
				},
				section_separators = {
					left = "",
					right = "",
				},
				disabled_filetypes = { "NvimTree" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{
						"branch",
						icon = "",
					},
					"diff",
					"diagnostics",
				},
				lualine_c = {
					{
						"filename",
						file_status = true,
						path = 1,
					},
				},
				lualine_x = { get_root_folder, "encoding", "fileformat", "filetype" }, -- Add root folder here
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			extensions = { "fugitive", "nvim-tree" },
		})
	end,
}
