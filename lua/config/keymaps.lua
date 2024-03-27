-- Some global keymap configuration. All other keymaps will be at their own plugin definition
local mapn = function(keys, cmd, dsc)
	vim.keymap.set("n", keys, cmd, { desc = dsc })
end

-- map movement between windows
mapn("<C-h>", "<C-w><C-h>", "Move focus to left window")
mapn("<C-j>", "<C-w><C-j>", "Move focus to lower window")
mapn("<C-k>", "<C-w><C-k>", "Move focus to upper window")
mapn("<C-l>", "<C-w><C-l>", "Move focus to tight window")

-- map telescope keys
--local bin = require("telescope.builtin")
--mapn("<leader>ff", bin.find_files, "Telescope Find Files")
