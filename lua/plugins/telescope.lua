return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		tag = '0.1.6',
		dependencies = {
			{
				"nvim-lua/plenary.nvim",
				{
					"nvim-telescope/telescope-fzf-native.nvim",
					build = "make",
					cond = function()
						return vim.fn.executable("make") == 1
					end,
				},
				{
					"nvim-telescope/telescope-ui-select.nvim",
				},
				{
					"nvim-tree/nvim-web-devicons",
				},
			},
		},
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("fzf")
			local mapn = function(keys, cmd, dsc)
				vim.keymap.set("n", keys, cmd, { desc = dsc })
			end
			local builtin = require("telescope.builtin")
			mapn("<leader>sf", builtin.find_files, "Search Files")
			mapn("<leader>sh", builtin.help_tags, "Search Help")
			mapn("<leader>sk", builtin.keymaps, "Search Keymaps")
			mapn("<leader>ss", builtin.builtin, "Search Select telescope")
			mapn("<leader>sw", builtin.grep_string, "Search current Word")
			mapn("<leader>sg", builtin.live_grep, "Search by Group")
			mapn("<leader>sd", builtin.diagnostics, "Search Diagnostics")
			mapn("<leader>sr", builtin.resume, "Search Resume")
			mapn("<leader>s.", builtin.oldfiles, "Search recent files (.)")
			mapn("<leader><leader>", builtin.buffers, "Search existing buffers")
		end,
	},
}
