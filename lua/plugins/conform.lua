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
			-- formatters = {
			-- 	latexindent_local = {
			-- 		command = "latexindent",
			-- 		args = { "$FILENAME" },
			-- 		stdin = false,
			-- 	},
			-- },
			formatters_by_ft = {
				markdown = { "cbfmt" },
				lua = { "stylua" },
				tex = { "latexindent" },
			},
			format_on_save = {
				timeout_ms = 500,
				-- lsp_fallback = true,
			},
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			}),
			vim.api.nvim_create_user_command("Format", function(args)
				local range = nil
				if args.count ~= -1 then
					local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
					range = {
						start = { args.line1, 0 },
						["end"] = { args.line2, end_line:len() },
					}
				end
				require("conform").format({ async = true, lsp_format = "fallback", range = range })
			end, { range = true }),
		})
	end,
}
