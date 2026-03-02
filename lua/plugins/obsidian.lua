return {
	"obsidian-nvim/obsidian.nvim",
	version = "3.14.7", -- recommended, use atest release instead of latest commit
	lazy = true,
	ft = "markdown",
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
		},
		-- callbacks = {
		-- 	enter_note = function (note)
		-- 		vim.ke
		-- 	end
		-- },
		daily_notes = {
			folder = "dailies",
			default_tags = { "dailies" },
			template = "daily.md",
		},
		templates = {
			folder = "templates",
			date_format = "%Y-%m-%d",
			substitutions = {
				daily_title = function()
					return os.date("%a %b %d, %Y")
				end,
			},
		},
		preferred_link_style = "markdown",
		checkbox = {
			create_new = false,
			order = { " ", "x", ">", "~", "!" },
		},
		frontmatter = { enabled = true },
		-- disable_frontmatter = false,
		---@return table
		legacy_commands = false,
	},
}
