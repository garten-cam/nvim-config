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
