return { -- LSP Configuration & Plugins
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				-- "debugpy", -- python linter
				"bibtex-tidy",
			},
		},
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"matlab_ls",
					"pylsp",
					"texlab",
					"julials",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("neodev").setup({})
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.pylsp.setup({})
			lspconfig.matlab_ls.setup({})
			lspconfig.texlab.setup({})
			lspconfig.julials.setup({})

			require("which-key").add({
				{ "<leader>k", vim.diagnostic.open_float, desc = "Hover (Show diagnostics)" },
				{ "[d",        vim.diagnostic.goto_prev,  desc = "Go next Diagnostic" },
				{ "]d",        vim.diagnostic.goto_next,  desc = "Go prev Diagnostic" },
				{ "<leader>q", vim.diagnostic.setloclist, desc = "List Diagnostics" },
			})
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					-- Enable completion triggered by <c-x><c-o>
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

					-- Buffer local mappings.
					-- See `:help vim.lsp.*` for documentation on any of the below functions
					local opts = { buffer = ev.buf }
					require("which-key").add({
						{ "g",          desc = "go" },
						{ "gD",         vim.lsp.buf.declaration,              desc = "Declaration",       opts },
						{ "gd",         vim.lsp.buf.definition,               desc = "Definition",        opts },
						{ "K",          vim.lsp.buf.hover,                    desc = "Hover",             opts },
						{ "gi",         vim.lsp.buf.implementation,           desc = "Implementation",    opts },
						{ "gr",         vim.lsp.buf.references,               desc = "Symbol References", opts },
						{ "<leader>D",  vim.lsp.buf.type_definition,          desc = "Type Definition",   opts },
						{ "<leader>r",  desc = "Rename" },
						{ "<leader>rn", vim.lsp.buf.rename,                   desc = "Lsp Rename",        opts },
						{ "<leader>c",  desc = "Code" },
						{ "<leader>ca", vim.lsp.buf.code_action,              desc = "Code Action",       opts, mode = { "n", "v" } },
						{ "<leader>f",  vim.lsp.buf.format({ async = true }), desc = "Format file",       opts },
					})
				end,
			})
		end,
	},
}
