return {
	{
		"echasnovski/mini.surround",
		version = "*",
		config = function()
			require("mini.surround").setup({
				mappings = {
					add = "<localleader>sa",
					delete = "<localleader>sd",
					find = "<localleader>sf",
					find_left = "<localleader>sF",
					highlight = "<localleader>sh",
					replace = "<localleader>sr",
					upadate_n_lines = "<localleader>sn",
					suffix_last = "l",
					suffix_next = "n",
				},
			})
		end,
	},
	{
		"echasnovski/mini.icons",
		version = false,
		config = function()
			require("mini.icons").setup()
		end,
	},
	{
		"echasnovski/mini.pairs",
		version = "*",
		config = function()
			require("mini.pairs").setup()
		end,
	},
}
