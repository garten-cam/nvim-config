return {
	"folke/which-key.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		require("which-key").add({
			{ "<localleader>s", name = "Surround" },
			{ "<localleader>o", name = "Obsidian" },
			{ "<leader>a", name = "Toggle Term Send Stuff" },
		})
	end,
}
