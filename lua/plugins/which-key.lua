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

			["g"] = { name = "Go", D = { "Go to Declaration" }, d = { "Go to definition" }, r = { "References" } },
			["<leader>f"] = { "Format File" },
			["<leader>D"] = { "Lsp Type Definition" },
			["K"] = { "Lsp Hover" },
			-- ["<leader>d"] = {
			-- 	"Debug",
			-- 	b = { "Toggle Breakpoint" },
			-- 	s = { "Float Variables" },
			-- 	p = { "Evaluate Expression" },
			-- 	h = { "Hover Evaluation" },
			-- 	l = { "Run Last adapter" },
			-- 	t = { "Terminate" },
			-- 	e = { "Dap Evaluate" },
			-- },
			-- ["<F5>"] = { "Dap start/continue" },
			-- ["<F10>"] = { "Dap step over" },
			-- ["<F11>"] = { "Dap step into" },
			-- ["<F12>"] = { "Dap step out" },
			["<localleader>o"] = { "Obsidian" },
			["<leader>t"] = { "Tunnel tmux" },
		}, { mode = "n" })
		require("which-key").register({
			["<leader>c"] = { "Code", a = { "Code Action" } },
			["<leader>t"] = { "Tunnel tmux" },
		}, { mode = "v" })
	end,
}
