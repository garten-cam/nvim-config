return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = {
					"lua",
					"vim",
					"vimdoc",
					"python",
					"matlab",
					"julia",
					"markdown",
				},
				sync_install = false,
				-- highlight = { enable = true },
				-- highlight = { enable = true, disable = { "latex", "markdown" } },
				highlight = { enable = true, disable = { "latex" } },
				indent = { enable = true },
				ignore_install = {},
				auto_install = true,
				modules = {},
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		-- config = function()
		-- 	require("treesitter-context").setup({
		-- 		enable = true,
		-- 	})
		-- end,
	},
}
