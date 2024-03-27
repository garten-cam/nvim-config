-- Some package sugestion
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- The usual mapleader
vim.g.mapleader = " "
-- The usual loacal leader
vim.g.maplocalleader = "\\"

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
-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
-- dont show the mode somewhere
vim.opt.showmode = false
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 5

vim.wo.wrap = true
vim.wo.linebreak = true

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
