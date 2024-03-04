return {
	{
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("gruvbox").setup({
        transparent_mode = true,
        terminal_colors = true,
      })
	  vim.cmd("colorscheme gruvbox")
    end,
	},
--	{
--		'shaunsingh/solarized.nvim',
--    priority = 1000,
--    -- lazy = true,
--		config = function()
--				vim.g.solarized_borders = true
--				vim.g.solarized_disable_background = true
--				vim.o.background = "dark"
--				-- require("solarized").set()
--		end,
--	}
}
