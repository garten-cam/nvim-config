-- Some global keymap configuration. All other keymaps will be at their own plugin definition
local mapn = function(keys, cmd, dsc)
	vim.keymap.set("n", keys, cmd, { desc = dsc })
end
local mapv = function(keys, cmd, dsc)
	vim.keymap.set("v", keys, cmd, { desc = dsc })
end

-- mapn("<Localleader>oc", require("obsidian").util.toggle_checkbox, "Toggle Checkbox")
-- Move
mapn("<A-j>", ":MoveLine(1)<CR>", "Move line j")
mapn("<A-k>", ":MoveLine(-1)<CR>", "Move line k")

mapv("<A-j>", ":MoveBlock(1)<CR>", "Move block j")
mapv("<A-k>", ":MoveBlock(-1)<CR>", "Move block k")
mapv("<A-h>", ":MoveHBlock(-1)<CR>", "Move block h")
mapv("<A-j>", ":MoveHBlock(1)<CR>", "Move block l")

mapn(":", "<cmd>FineCmdline<CR>", "Fine command line")
