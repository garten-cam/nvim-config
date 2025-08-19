return {
	"jghauser/papis.nvim",
	dependencies = {
		"kkharji/sqlite.lua",
		"MunifTanjim/nui.nvim",
		"pysan3/pathlib.nvim",
		"nvim-neotest/nvim-nio",
		-- if not already installed, you may also want:
		"hrsh7th/nvim-cmp",

		-- Choose one of the following two if not already installed:
		"nvim-telescope/telescope.nvim",
		-- "folke/snacks.nvim",
	},
	config = function()
		require("papis").setup({
			-- Your configuration goes here
			enable_keymaps = true,
			create_new_note_fn = function(papis_id, notes_name)
				vim.fn.system(
					string.format(
						"papis update --set notes '[\"%s\"]' papis_id:%s",
						vim.fn.shellescape(notes_name),
						vim.fn.shellescape(papis_id)
					)
				)
			end,
			["formatter"] = {

				format_notes = function(entry)
					-- Helper in case a field is nil
					local function safe(field)
						return entry[field] or ""
					end

					local lines = {
						"---",
						"title: " .. safe("title"),
						"author: " .. safe("author"),
						"year: " .. safe("year"),
						"---",
						"",
						"# Notes",
						"",
					}
					return lines
				end,
				format_references = function(entry)
					-- pull year
					local year = entry.year or "n.d."

					-- pull first author
					local author = entry.author or ""
					local lastname = author:match("([^,%s]+)") or author -- everything before a comma or space

					-- build reference key
					local ref = "@" .. lastname .. year
					return { ref }
				end,
			},
		})
	end,
}
