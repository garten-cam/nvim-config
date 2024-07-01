return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				-- theme = "gruvbox-material",
				-- theme = "dracula",
				-- theme = "iceberg",
				theme = "catppuccin",
			},
		})
	end,
}
