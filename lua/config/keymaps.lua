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

mapn(":", "<cmd>FineCmdline<CR>", "Fine command line")

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
