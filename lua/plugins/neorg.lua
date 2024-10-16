return {
	"nvim-neorg/neorg",
	lazy = false,
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = { config = { icon_preset = "basic" } },
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/Documents/norgtes/",
						},
						default_workpace = "norgtes",
						index = "index.norg",
					},
				},
				["core.completion"] = { config = { engine = "nvim-cmp" } },
				["core.integrations.nvim-cmp"] = {},
			},
		})
		vim.api.nvim_create_autocmd("Filetype", {
			pattern = "norg",
			callback = function()
				vim.keymap.set("n", "<localleader>n", "", { buffer = true, desc = "Neorg" })
				vim.keymap.set("n", "<localleader>t", "", { buffer = true, desc = "Tasks Neorg" })
				vim.keymap.set("n", "<localleader>c", "", { buffer = true, desc = "Code Neorg" })
				vim.keymap.set("n", "<localleader>i", "", { buffer = true, desc = "Inser Neorg" })
				vim.keymap.set("n", "<localleader>l", "", { buffer = true, desc = "Lists Neorg" })
				vim.keymap.set(
					"n",
					"<localleader>im",
					"<cmd>Neorg inject-metadata<cr>",
					{ buffer = true, desc = "[neorg] Inject Metadata" }
				)
			end,
		})
		-- vim.keymap.set("n", "<localleader>n", "", { buffer = true, desc = "Neorg" })
		-- require("which-key").add({
		-- 	{ "<localleader>t", desc = "Tasks" },
		-- 	{ "<localleader>n", desc = "Neorg" },
		-- 	{ "<localleader>c", desc = "Code" },
		-- 	{ "<localleader>i", desc = "Date" },
		-- 	{ "<localleader>l", desc = "Lists" },
		-- 	{ "<localleader>nm", "<cmd>Neorg inject-metadata<cr>", desc = "[neorg] Inject Metadata" },
		-- })
	end,
}
