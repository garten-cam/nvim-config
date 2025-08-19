return {
	{
		"lervag/vimtex",
		lazy = false,
		init = function()
			vim.g.vimtex_mappings_disable = { ["n"] = { "K" } }
			vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
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
			}
			vim.g.vimtex_compiler_latexmk_engines = {
				_ = "-xelatex",
			}
			vim.g.vimtex_syntax_conceal_disable = 1
		end,
	},
	{
		"ferdinandyb/bibtexcite.vim",
		dependencies = {
			"junegunn/fzf.vim",
		},
		ft = { "tex", "markdown", "md" },
		config = function()
			vim.g.bibtexcite_bibfile = "/home/cgarcia/Documents/sidEDMDjournal/siddec.bib"
			-- Create a command to insert a citation from your BibTeX file.
			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "markdown", "tex" },
				callback = function()
					-- Normal mode mapping for `<leader>nc` to insert a citation.
					vim.keymap.set("n", "<localleader>bi", "<cmd>BibtexciteInsert<cr>", {
						buffer = true,
						silent = true,
					})

					-- Insert mode mapping for `@@` to insert a citation.
					vim.keymap.set("i", "@@", "<esc><cmd>BibtexciteInsert<cr>", {
						buffer = true,
						silent = true,
					})
				end,
			})
		end,
	},
}
