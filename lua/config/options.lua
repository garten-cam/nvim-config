-- Some package sugestion
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- The usual mapleader
vim.g.mapleader = " "
-- The usual loacal leader
vim.g.maplocalleader = "\\"
-- vimtex options
vim.g.vimtex_general_viewer = "zathura"
vim.g.vimtex_view_command = "zathura"
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
	aux_dir = "aux",
}
vim.g.vimtex_compiler_latexmk_engines = {
	_ = "-xelatex",
}

-- sync clipboard betweent OS and neovim
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
-- always show the sign column. Otherwisek, it looks weird when it is not under version control
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.mouse = "a"
vim.opt.updatetime = 500
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
-- dont show the mode somewhere
vim.opt.showmode = false
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 5
vim.opt.undofile = true
-- vim.opt.textwidth = 80

vim.wo.wrap = true
vim.wo.linebreak = true
-- vim.wo.colorcolumn = "+0"

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
vim.api.nvim_create_autocmd({ "FileType" }, {
	group = vim.api.nvim_create_augroup("lazyvim_vimtex_conceal", { clear = true }),
	pattern = { "bib", "tex", "markdown" },
	callback = function()
		vim.opt.conceallevel = 2
	end,
})
