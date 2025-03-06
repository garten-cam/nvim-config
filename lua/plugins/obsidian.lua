return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = false,
	ft = "markdown",
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",

		-- see below for full list of optional dependencies 👇
	},
	opts = {
		workspaces = {
			{
				name = "notes",
				path = "~/vaults/",
			},
		},
		daily_notes = {
			folder = "dailies",
			default_tags = { "dailies" },
			template = "daily.md",
		},
		templates = {
			folder = "templates",
			date_format = "%Y-%m-%d",
			substitutions = {
				daily_title = function()
					return os.date("%a %b %d, %Y")
				end,
			},
		},
		preferred_link_style = "markdown",
		ui = {
			enable = false,
			checkboxes = {
				-- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
				[" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
				["x"] = { char = "", hl_group = "ObsidianDone" },
				["!"] = { char = "", hl_group = "ObsidianImportant" },
			},
		},
		note_frontmatter_func = function(note)
			-- Add the title of the note as an alias.
			if note.title then
				note:add_alias(note.title)
			end

			local out = { id = note.id, aliases = note.aliases, tags = note.tags }

			-- `note.metadata` contains any manually added fields in the frontmatter.
			-- So here we just make sure those fields are kept in the frontmatter.
			if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
				for k, v in pairs(note.metadata) do
					out[k] = v
				end
			end

			return out
		end,
		mappings = {
			["<cr>"] = {
				action = function()
					return "<cmd>ObsidianFollowLink<cr>"
				end,
				opts = { buffer = true, expr = true },
			},
		},
		-- ---@param url string
		-- follow_url_func = function(url)
		-- 	-- Open the URL in the default web browser.
		-- 	-- vim.fn.jobstart({ "open", url }) -- Mac OS
		-- 	vim.fn.jobstart({ "xdg-open", url }) -- linux
		-- 	-- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
		-- 	-- vim.ui.open(url) -- need Neovim 0.10.0+
		-- end,
		-- ---@param pdf string
		-- follow_pdf_func = function(pdf)
		-- 	-- vim.fn.jobstart({ "open", url }) -- Mac OS
		-- 	vim.fn.jobstart({ "xdg-open", pdf }) -- linux
		-- 	-- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
		-- 	-- vim.ui.open(url) -- need Neovim 0.10.0+
		-- end,
	},
}
