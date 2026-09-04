return {
	"selimacerbas/markdown-preview.nvim",
	dependencies = { "selimacerbas/live-server.nvim" },
	config = function()
		require("markdown_preview").setup({
			-- all optional; sane defaults shown
			instance_mode = "takeover", -- "takeover" (one tab) or "multi" (tab per instance)
			port = 0, -- 0 = auto (8421 for takeover, OS-assigned for multi)
			open_browser = true,
			browser = "surf",
			default_theme = "dark", -- "dark" or "light"; initial preview theme
			debounce_ms = 300,
			scroll_sync = true,
			yaml_mode = "hide",
			-- overwrite_index_on_start = false,
			hooks = {
				on_start = function()
					local preview = require("markdown_preview")
					local util = require("markdown_preview.util")

					local dir
					if preview.config.instance_mode == "takeover" then
						dir = util.shared_workspace()
					else
						dir = util.workspace_for_buffer(bufnr)
					end

					local path = vim.fs.joinpath(dir, preview.config.index_name)
					local content = util.read_text(path)

					content = content:gsub("<h1>Markdown Preview</h1>", "", 1)

					util.write_text(path, content)
				end,
			},
		})
	end,
}
