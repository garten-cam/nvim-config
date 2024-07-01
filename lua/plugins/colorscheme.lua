return {
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		priority = 1000,
		lazy = false,
		config = function()
			require("gruvbox").setup({
				transparent_mode = true,
				terminal_colors = false,
				bold = true,
			})
			-- vim.cmd.colorscheme("gruvbox")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		name = "tokyonight",
		config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = true,
				terminal_colors = true,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
				},
			})
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				highlight_overrides = {
					mocha = function(colors)
						return {
							Comment = { fg = colors.green },
						}
					end,
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
