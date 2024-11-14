return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		require("which-key").add({
			{ "<localleader>s", desc = "Surround" },
			{ "<localleader>o", desc = "Obsidian" },
			{ "<localleader>od", "<cmd>ObsidianDailies<cr>", desc = "Obsidian Dailies" },
			{ "<localleader>os", "<cmd>ObsidianQuickSwitch<cr>", desc = "Obsidian Quick Switch" },
			{ "<localleader>ob", "<cmd>ObsidianBacklinks<cr>", desc = "Obsidian Back Links" },
			{ "<localleader>of", "<cmd>ObsidianSearch<cr>", desc = "Obsidian fz" },
			{ "<localleader>ot", "<cmd>ObsidianTOC<cr>" },
		})
	end,
	-- config = function()
	-- 	require("which-key").setup()
	-- 	require("which-key").add({
	--
	-- 	})
	-- 	require("which-key").register({
	--
	-- 		-- ["g"] = { name = "Go", D = { "Go to Declaration" }, d = { "Go to definition" }, r = { "References" } },
	-- 		-- ["<leader>f"] = { "Format File" },
	-- 		-- ["<localleader>s"] = { "Surround" },
	-- 		-- ["<leader>t"] = { "Tunnel tmux" },
	-- 	}, { mode = "n" })
	-- 	require("which-key").register({
	-- 		["<leader>t"] = { "Tunnel tmux" },
	-- 	}, { mode = "v" })
	-- end,
}
