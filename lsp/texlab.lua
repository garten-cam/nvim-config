return {
	cmd = { "texlab" },
	filetypes = { "tex", "latex", "bib" },
	root_markers = {
		".git",
		".latexmkrc",
		"latexmkrc",
		".texlabroot",
		"texlabroot",
		"Tectonic.toml",
	},
	settings = {
		texlab = {
			build = {
				onSave = true,
			},
		},
	},
}
