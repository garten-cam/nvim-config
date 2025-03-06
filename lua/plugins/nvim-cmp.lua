return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		run = "make install_jsregexp",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"hrsh7th/cmp-path",
		},
		config = function()
			require("luasnip.loaders.from_lua").lazy_load({ paths = { "./lua/luasnip/" } })
		end,
	},
	{ "kdheepak/cmp-latex-symbols" },
	{
		"hrsh7th/nvim-cmp",
		requires = { "kdheepak/cmp-latex-symbols", after = "nvim-cmp" },
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			luasnip.config.setup({})
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
					["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif require("luasnip").expand_or_jumpable() then
							require("luasnip").expand_or_jump()
						else
							fallback()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif require("luasnip").jumpable(-1) then
							require("luasnip").jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" }, -- For luasnip users.
					{ name = "path" },
					{ name = "buffer" },
					{ name = "latex_symbols" },
					{ name = "obsidian" },
					{ name = "treesitter" },
					{ name = "cmp-nvim-lsp" },
				}),
			})
			cmp.setup.filetype("tex", {
				sources = {
					{ name = "vimtex" },
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
					{ name = "path" },
					{ name = "latex_symbols" },
				},
			})
		end,
	},
	{
		"micangl/cmp-vimtex",
		ft = "tex",
		config = function()
			require("cmp_vimtex").setup({})
		end,
	},
}
