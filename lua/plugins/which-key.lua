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
			{ "<localleader>od", "<cmd>Obsidian dailies<cr>", desc = "Obsidian Dailies" },
			{ "<localleader>os", "<cmd>Obsidian quick_switch<cr>", desc = "Obsidian Quick Switch" },
			{ "<localleader>ob", "<cmd>Obsidian backlinks<cr>", desc = "Obsidian Back Links" },
			{ "<localleader>of", "<cmd>Obsidian search<cr>", desc = "Obsidian fz" },
			{ "<localleader>ot", "<cmd>Obsidian toc<cr>", desc = "Obsidian TOC" },
			{ "<localleader>oc", "<cmd>Obsidian toggle_checkbox<cr>", desc = "Obsidian Toggle checkbox" },
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
