return {
	{
		"nvim-mini/mini.surround",
		version = "*",
		config = function()
			require("mini.surround").setup({
				mappings = {
					add = "<localleader>sa",
					delete = "<localleader>sd",
					find = "<localleader>sf",
					find_left = "<localleader>sF",
					highlight = "<localleader>sh",
					replace = "<localleader>sr",
					upadate_n_lines = "<localleader>sn",
					suffix_last = "l",
					suffix_next = "n",
				},
			})
		end,
	},
	{
		"nvim-mini/mini.icons",
		version = false,
		config = function()
			require("mini.icons").setup()
		end,
	},
	{
		"nvim-mini/mini.pairs",
		version = "*",
		config = function()
			require("mini.pairs").setup()
		end,
	},
	-- {
	-- 	"nvim-mini/mini.snippets",
	-- 	dependencies = {
	-- 		"rafamadriz/friendly-snippets", -- ensures it's in runtimepath before setup()
	-- 	},
	-- 	version = "*",
	-- 	config = function()
	-- 		local latex_patterns = { "latex/**/*.json", "**/latex.json" }
	-- 		local lang_patterns = {
	-- 			tex = latex_patterns,
	-- 			plaintex = latex_patterns,
	-- 			-- Recognize special injected language of markdown tree-sitter parser
	-- 			markdown_inline = { "markdown.json" },
	-- 		}
	-- 		require("mini.snippets").setup({
	-- 			snippets = {
	-- 				require("mini.snippets").gen_loader.from_lang({ lang_patterns = lang_patterns }),
	-- 				require("mini.snippets").gen_loader.from_file( -- your custom ones
	-- 					vim.fn.stdpath("config") .. "/snippets/{lang}.json"
	-- 				),
	-- 			},
	--
	-- 			mappings = {
	-- 				expand = "<Tab>", -- expand or jump forward
	-- 				jump_next = "<Tab>",
	-- 				jump_prev = "<S-Tab>",
	-- 				stop = "<C-c>", -- exit snippet session
	-- 			},
	-- 		})
	-- 	end,
	-- },
	-- {
	-- 	"nvim-mini/mini.completion",
	-- 	version = "*",
	-- 	config = function()
	-- 		require("mini.completion").setup()
	-- 	end,
	-- },
}
