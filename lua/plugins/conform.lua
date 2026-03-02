return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				-- markdown = { "cbfmt", "prettier" },
				markdown = { "cbfmt" },
				lua = { "stylua" },
				tex = { "tex-fmt" },
				c = { "clang-format" },
				h = { "clang-format" },
			},
			default_format_opts = {
				-- Increase the timeout in case Runic needs to precompile
				-- (e.g. after upgrading Julia and/or Runic).
				timeout_ms = 10000,
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
		})
	end,
}
