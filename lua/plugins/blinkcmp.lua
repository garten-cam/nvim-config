return {
	"saghen/blink.cmp",
	dependencies = {
		"saghen/blink.lib",
		"saghen/blink.compat",
		"micangl/cmp-vimtex",
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			dependencies = { "rafamadriz/friendly-snippets" }, -- owned by LuaSnip
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
		-- "kdheepak/cmp-latex-symbols",
	},
	build = function()
		require("blink.cmp").build():pwait()
	end,
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "enter" },
		completion = { documentation = { auto_show = false } },
		sources = {
			default = { "lsp", "path", "snippets", "buffer", "vimtex" },
			providers = {
				vimtex = {
					name = "vimtex",
					module = "blink.compat.source",
				},
			},
		},
		snippets = { preset = "luasnip" },
		fuzzy = { implementation = "lua" },
	},
}
