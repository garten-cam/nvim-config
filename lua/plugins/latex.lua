return {
	{
		"lervag/vimtex",
		init = function()
			vim.g.vimtex_mappings_disable = { ["n"] = { "K" } }
			vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
		end,
		config = function()
			vim.g.vimtex_general_viewer = "zathura"
			vim.g.vimtex_view_command = "zathura"
			vim.g.vimtex_compiler_method = "latexmk"
			vim.g.vimtex_compiler_latexmk = {
				aux_dir = "aux",
				-- options = {
				-- 	-- 	"file-line-error",
				-- 	"-shell-escape",
				-- 	"-verbose",
				-- },
			}
			vim.g.vimtex_compiler_latexmk_engines = {
				_ = "-xelatex",
			}
		end,
	},
	{
		"iurimateus/luasnip-latex-snippets.nvim",
	},
}
