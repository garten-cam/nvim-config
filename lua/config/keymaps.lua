-- Some global keymap configuration. All other keymaps will be at their own plugin definition
local mapn = function(keys, cmd, dsc)
	vim.keymap.set("n", keys, cmd, { desc = dsc })
end
local mapv = function(keys, cmd, dsc)
	vim.keymap.set("v", keys, cmd, { desc = dsc })
end

-- Move
mapn("<A-j>", ":MoveLine(1)<CR>", "Move line j")
mapn("<A-k>", ":MoveLine(-1)<CR>", "Move line k")
-- Clear search
mapn("<Esc><Esc>", ":noh<CR>", "No highlight search")
mapv("<A-j>", ":MoveBlock(1)<CR>", "Move block j")
mapv("<A-k>", ":MoveBlock(-1)<CR>", "Move block k")
mapv("<A-h>", ":MoveHBlock(-1)<CR>", "Move block h")
mapv("<A-l>", ":MoveHBlock(1)<CR>", "Move block l")
-- Obsidian
mapn("<localleader>od", "<cmd>Obsidian dailies<CR>", "Obsidian Dailies")
mapn("<localleader>os", "<cmd>Obsidian quick_switch<cr>", "Obsidian Quick Switch")
mapn("<localleader>ob", "<cmd>Obsidian backlinks<cr>")
mapn("<localleader>of", "<cmd>Obsidian search<cr>")
mapn("<localleader>ot", "<cmd>Obsidian toc<cr>", "Obsidian TOC")
-- Fine cmd
-- mapn(":", "<cmd>FineCmdline<CR>", "Fine command line")
-- toggleterm
mapn("<leader>al", "<cmd>ToggleTermSendCurrentLine<cr>", "Send Current Line")
mapv("<leader>al", "<cmd>ToggleTermSendVisualLines<cr>", "Send Visual Lines")
mapv("<leader>as", "<cmd>ToggleTermSendVisualSelection<cr>", "Send Visual Selection")
-- double semicolon

-- Some terminal keymaps
local function set_terminal_keymaps()
	local opts = { buffer = 0, silent = true, noremap = true }
	-- Move to other windows directly from terminal mode
	vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-h>]], opts)
	vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-j>]], opts)
	vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-k>]], opts)
	vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-l>]], opts)
end

-- Apply terminal keymaps to any terminal buffer, including Iron’s
vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "term://*",
	callback = set_terminal_keymaps,
})
-- Add the keybinding to run a formatter
vim.keymap.set("", "<leader>f", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format file" })

-- Rename using the lsp
vim.keymap.set("n", "<leader>rn", function()
	vim.lsp.buf.rename()
end, { desc = "LSP rename" })
