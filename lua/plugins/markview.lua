return {
	"OXY2DEV/markview.nvim",
	lazy = false, -- Recommended
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
		"echasnovski/mini.icons",
	},
	config = {
		latex = { enable = false },
		markdown = {
			code_blocks = {
				enable = true,
				style = "block",
				pad_amount = 0,
				label_direction = "left",
			},
			list_items = {
				enable = true,
				---@type integer
				indent_size = 2,
				---@type integer
				shift_width = 1,
				marker_minus = {
					add_padding = false,
					text = "•",
					hl = "MarkviewListItemMinus",
				},
				marker_plus = {
					add_padding = false,
					text = "+",
					hl = "MarkviewListItemPlus",
				},
				marker_star = {
					add_padding = false,
					text = "*",
					hl = "MarkviewListItemStar",
				},
				marker_dot = {
					add_padding = false,
				},
				marker_parenthesis = {
					add_padding = false,
				},
			},
			inline_codes = { enable = false },
		},
	},
}
