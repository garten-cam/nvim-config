return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
    local mapn = function(keys, cmd, dsc)
	    vim.keymap.set('n', keys, cmd, { desc = dsc })
    end

    mapn("<leader>e", "<cmd>NvimTreeToggle<CR>", "Toggle Tree")
  end,
}
