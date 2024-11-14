return {
	{
		"echasnovski/mini.surround",
		version = "*",
		opts = {
			mappings = {
				add = "<localleader>sa",
				delete = "<localleader>sd",
				find = "<localleader>sf",
				find_left = "<localleader>sF",
				highlight = "<localleader>sh",
				replace = "<localleader>sr",
				update_n_lines = "<localleader>sn",
			},
		},
	},
	{ "echasnovski/mini.icons", version = false },
	{
		"echasnovski/mini.pairs",
		version = "*",
		config = function()
			require("mini.pairs").setup()
		end,
	},
}
