-- Some package sugestion
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- -- The usual mapleader -- This is all in the lazy config now
-- vim.g.mapleader = " "
-- -- The usual loacal leader
-- vim.g.maplocalleader = "\\"
-- vimtex options
vim.o.spelllang = "en_us"
vim.o.spell = true
-- sync clipboard betweent OS and neovim
vim.opt.clipboard = "unnamed,unnamedplus"
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
vim.opt.ignorecase = true

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
	pattern = { "bib", "tex", "markdown", "norg", "neorg" },
	callback = function()
		vim.opt.conceallevel = 1
	end,
})
-- For some reason markdown resets some values
vim.g.markdown_recommended_style = 0
-- vim.g.mark
-- Font in case there is a gui
vim.o.guifont = "MesloLGS Nerd Font Mono:h10"
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "*.md" },
	callback = function()
		vim.diagnostic.enable(false)
	end,
})
vim.diagnostic.config({ jump = { float = true } })
