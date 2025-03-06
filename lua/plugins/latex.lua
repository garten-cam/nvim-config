return {
	{
		"lervag/vimtex",
		init = function()
			vim.g.vimtex_mappings_disable = { ["n"] = { "K" } }
			vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
		end,
		config = function()
			-- vim.g.vimtex_imaps_enabled = 0 --i.e., disable them
			vim.g.vimtex_view_method = "zathura"
			vim.g.vimtex_compiler_method = "latexmk"
			vim.g.vimtex_compiler_latexmk = {
				aux_dir = "aux",
				options = {
					"-synctex=1",
					"-interaction=nonstopmode",
					"-shell-escape",
					"-file-line-error",
					"-verbose",
				},
				-- options = {
				-- 	-- 	"file-line-error",
				-- 	"-shell-escape",
				-- 	"-verbose",
				-- },
			}
			vim.g.vimtex_compiler_latexmk_engines = {
				_ = "-xelatex",
			}
			vim.g.vimtex_syntax_conceal_disable = 1
			-- vim.g.vimtex_syntax_conceal = {
			-- 	{ accents = "1" },
			-- }
		end,
	},
	{
		"iurimateus/luasnip-latex-snippets.nvim",
	},
}
