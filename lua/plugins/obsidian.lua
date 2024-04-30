return {
	{
		"epwalsh/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		lazy = false,
		ft = "BufReadPre " .. vim.fn.expand("~") .. "/Documents/Vaults/**.md",
		-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
		-- event = {
		--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		--   "BufReadPre path/to/my-vault/**.md",
		--   "BufNewFile path/to/my-vault/**.md",
		-- },
		dependencies = {
			-- Required.
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"nvim-telescope/telescope.nvim",
		},
		opts = {
			workspaces = {
				{
					name = "Research",
					path = "~/Documents/Vaults/Research",
				},
			},
			disable_frontmatter = false,
			-- notes_subdir = "notes",
			-- see below for full list of options 👇
			-- daily_notes = {
			--   folder = "Journal",
			-- },
			new_notes_location = "current_dir",
		},
	},
	-- {
	-- 	"tadmccorkle/markdown.nvim",
	-- 	ft = "markdown", -- or 'event = "VeryLazy"'
	-- 	opts = {
	-- 		-- configuration here or empty for defaults
	-- 	},
	-- },
}
