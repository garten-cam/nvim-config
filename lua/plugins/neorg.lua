return {
	"nvim-neorg/neorg",
	lazy = false,
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = { config = { icon_preset = "basic" } },
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/Documents/norgtes/",
						},
						default_workpace = "norgtes",
						index = "index.norg",
					},
				},
				["core.completion"] = { config = { engine = "nvim-cmp" } },
				["core.integrations.nvim-cmp"] = {},
			},
		})
	end,
}
