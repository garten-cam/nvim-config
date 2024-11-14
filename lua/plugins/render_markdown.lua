return {
	"MeanderingProgrammer/render-markdown.nvim",
	-- dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" }, -- if you use standalone mini plugins
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	config = function()
		require("render-markdown").setup({
			latex = {
				enabled = false,
			},
			anti_conceal = {
				enabled = false,
			},
			heading = {
				border_prefix = true,
			},
			bullet = {
				icons = { "•" },
			},
			checkbox = {
				position = "overlay",
				checked = {
					scope_highlight = "@markup.strikethrough",
				},
				unchecked = {
					scope_highlight = "RenderMarkdownWarn",
					highlight = "RenderMarkdownWarn",
				},
				custom = {
					important = {
						raw = "[!]",
						rendered = "󰥕 ",
						highlight = "RenderMarkdownBullet",
						scope_highlight = "RenderMarkdownBullet",
					},
				},
			},
		})
	end,
}
