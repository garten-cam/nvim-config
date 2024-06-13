-- Some global keymap configuration. All other keymaps will be at their own plugin definition
local mapn = function(keys, cmd, dsc)
	vim.keymap.set("n", keys, cmd, { desc = dsc })
end
local mapv = function(keys, cmd, dsc)
	vim.keymap.set("v", keys, cmd, { desc = dsc })
end

-- map movement between windows
mapn("<C-h>", "<C-w><C-h>", "Move focus to left window")
mapn("<C-j>", "<C-w><C-j>", "Move focus to lower window")
mapn("<C-k>", "<C-w><C-k>", "Move focus to upper window")
mapn("<C-l>", "<C-w><C-l>", "Move focus to tight window")

-- map telescope keys
--local bin = require("telescope.builtin")
--mapn("<leader>ff", bin.find_files, "Telescope Find Files")

if os.getenv("TMUX") then
	vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
	vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
	vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
	vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
end
-- Obsidian
mapn("<LocalLeader>of", "<cmd>ObsidianSearch<cr>", "Obsidian Search")
mapn("<LocalLeader>ot", "<cmd>ObsidianToday<cr>", "Obsidian Today")
-- mapn("<Localleader>oc", require("obsidian").util.toggle_checkbox, "Toggle Checkbox")
-- Move
mapn("<A-j>", ":MoveLine(1)<CR>", "Move line j")
mapn("<A-k>", ":MoveLine(-1)<CR>", "Move line k")

mapv("<A-j>", ":MoveBlock(1)<CR>", "Move block j")
mapv("<A-k>", ":MoveBlock(-1)<CR>", "Move block k")
mapv("<A-h>", ":MoveHBlock(-1)<CR>", "Move block h")
mapv("<A-j>", ":MoveHBlock(1)<CR>", "Move block l")

mapn(":", "<cmd>FineCmdline<CR>", "Fine command line")
