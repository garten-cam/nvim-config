local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").lua_ls.setup({
	settings = {
		completion = {
			callSnippet = "Replace"
		}
	},
	capabilities = lsp_capabilities,
})
require('neodev').setup({})
require('lspconfig').ruff_lsp.setup {
	init_options = {
		settings = {
			args = {},
		}
	}
}
local mapn = function(keys, cmd, dsc)
	vim.keymaps.set('n', keys, cmd, { noremap = true, silent = true, desc = dsc })
end
