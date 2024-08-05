return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		tag = "0.1.6",
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
			require("which-key").add({
				{ "<leader>s",        desc = "Search" },
				{ "<leader>sf",       "<cmd>Telescope find_files<cr>",           desc = "Search Files" },
				{ "<leader>sh",       "<cmd>Telescope help_tags<cr>",            desc = "Search Help" },
				{ "<leader>sk",       "<cmd>Telescope keymaps<cr>",              desc = "Search Keymaps" },
				{ "<leader>ss",       "<cmd>Telescope builtin<cr>",              desc = "Search Select Telescope" },
				{ "<leader>sw",       "<cmd>Telescope grep_string<cr>",          desc = "Search current Word" },
				{ "<leader>sg",       "<cmd>Telescope live_grep<cr>",            desc = "Search string" },
				{ "<leader>sd",       "<cmd>Telescope diagnostics<cr>",          desc = "Search Diagnostics" },
				{ "<leader>sr",       "<cmd>Telescope resume<cr>",               desc = "Search Resume" },
				{ "<leader>s.",       "<cmd>Telescope oldfiles<cr>",             desc = "Search recent files" },
				{ "<leader>sy",       "<cmd>Telescope lsp_document_symbols<cr>", desc = "Search LSP symbols" },
				{ "<leader><leader>", "<cmd>Telescope buffers<cr>",              desc = "Search existing buffers" },
			})
		end,
	},
}
