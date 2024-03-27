return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		require("which-key").setup()
		require("which-key").register({
			["<leader>c"] = { "Code", a = { "Code Action" } },
			["<leader>r"] = { "Rename", n = { "Lsp Rename" } },
			["<leader>s"] = { "Search" },
			["<leader>w"] = {
				"Workspace",
				a = { "Add Workspace folder" },
				r = { "Remove Workspace folder" },
				l = { "List Workspace folders" },
			},

			["g"] = { name = "Go", D = { "Go to Declaration" }, d = { "Go to definition" } },
			["<leader>f"] = { "Format File" },
			["<leader>D"] = { "Lsp Type Definition" },
			["K"] = { "Lsp Hover" },
		})
	end,
}
