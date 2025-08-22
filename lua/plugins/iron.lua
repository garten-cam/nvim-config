return {
	"Vigemus/iron.nvim",
	config = function()
		local iron = require("iron.core")

		iron.setup({
			config = {
				-- Define the REPLs you want to use
				repl_definition = {
					python = { command = { "python3" } }, -- or {"ipython"}
					lua = { command = { "lua" } },
					julia = { command = { "julia", "--banner=no", "--color=yes" } },
				},
				-- Open the REPL in a floating window
				repl_open_cmd = require("iron.view").center("40%", 40),
			},
			keymaps = {
				send_motion = "<leader>ic", -- send a motion (like vip for paragraph)
				visual_send = "<leader>ic", -- send visual selection
				send_line = "<leader>il", -- send current line
				send_file = "<leader>if", -- send whole file
				cr = "<leader>s<ir>", -- send current line + move down
				interrupt = "<leader>ii", -- interrupt (Ctrl+C)
				exit = "<leader>iq", -- quit the REPL
				clear = "<leader>il", -- clear REPL screen
			},
			highlight = {
				italic = true,
			},
			ignore_blank_lines = true,
		})

		-- Optional: keymap to toggle the REPL
		vim.keymap.set("n", "<leader>ir", "<cmd>IronRepl<cr>", { desc = "Start REPL" })
		vim.keymap.set("n", "<leader>ih", "<cmd>IronHide<cr>", { desc = "Hide REPL" })
		vim.keymap.set("n", "<leader>if", "<cmd>IronFocus<cr>", { desc = "Focua REPL" })
	end,
}
