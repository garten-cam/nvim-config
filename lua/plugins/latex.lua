return {
	{
		"lervag/vimtex",
		init = function()
			vim.g.vimtex_mappings_disable = { ["n"] = { "K" } }
			vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
		end,
	},
	{
		"evesdropper/luasnip-latex-snippets.nvim",
	},
}
