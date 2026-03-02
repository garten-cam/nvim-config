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
				dim_inactive = true,
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
				style = "moon",
				transparent = true,
				terminal_colors = true,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
				},
			})
			-- vim.cmd.colorscheme("tokyonight")
			vim.api.nvim_set_hl(0, "Comment", { fg = "#a9b1d6", italic = true })
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
							-- Comment = { fg = colors.green },
							Comment = { fg = "#a9b1d6" },
							Visual = { bg = colors.surface2 },
						}
					end,
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = { -- set to setup table
			user_default_options = {
				names = false,
			},
		},
	},
}
