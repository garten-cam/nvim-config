return {
	-- amongst your other plugins
	-- { "akinsho/toggleterm.nvim", version = "*", config = true },
	-- or
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			open_mapping = [[<c-a>]],
			direction = "vertical",
			size = function(term)
				if term.direction == "horizontal" then
					return 20
				elseif term.direction == "vertical" then
					return 80
					-- return vim.o.columns * 0.4
				end
			end,
		},
	},
}
