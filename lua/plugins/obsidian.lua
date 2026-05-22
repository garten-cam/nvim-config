return {
	"obsidian-nvim/obsidian.nvim",
	-- version = "3.14.7", -- recommended, use atest release instead of latest commit
	version = "*",
	lazy = false,
	ft = { "markdown", "snacks_dashboard" },
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",

		-- see below for full list of optional dependencies 👇
	},
	---@module 'obsidian'
	---@type obsidian.config
	opts = {
		workspaces = {
			{
				name = "notes",
				path = "~/vaults/",
			},
			{
				name = "zettelkasten",
				path = "~/zettelkasten",
			},
		},
		note = {
			template = "default.md",
		},
		templates = {
			folder = "templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:#M",
			substitutions = {
				daily_title = function()
					return print(os.date("%a %b %d, %Y"))
				end,
			},
		},
		-- preferred_link_style = "markdown",
		link = {
			style = "wiki",
			format = "shortest",
		},
		checkbox = {
			-- create_new = false,
			order = { " ", "~", "!", ">", "x", "" },
		},
		-- frontmatter = { enabled = true, sort = { "id", "aliases" } },
		-- disable_frontmatter = false,
		---@return table
		legacy_commands = false,
	},
}
