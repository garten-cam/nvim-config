return {
	"christoomey/vim-tmux-navigator",
	lazy = false,
	config = function()
		local wk = require("which-key")
		wk.add({
			-- Tmux and normal nvim window navigation
			{ "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Move focus to left window" },
			{ "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Move focus to lower window" },
			{ "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Move focus to upper window" },
			{ "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Move focus to right window" },
		})
	end,
}
