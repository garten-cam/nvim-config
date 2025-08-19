return {
	"stevearc/conform.nvim",
	-- opts = {
	-- 	event = { "BufWritePre", "BufNewFile" },
	-- 	notify_on_error = false,
	-- 	format_on_save = {
	-- 		timeout_ms = 500,
	-- 		lsp_format = "fallback",
	-- 	},
	-- 	formatters_by_ft = {
	-- 		tex = { "tex-fmt", "latexindet" },
	-- 	},
	-- },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				markdown = { "cbfmt", "prettier" },
				lua = { "stylua" },
				tex = { "tex-fmt" },
				c = { "clang-format" },
				h = { "clang-format" },
			},
			format_on_save = {
				timeout_ms = 500,
				-- lsp_fallback = true,
			},
		})
	end,
}
