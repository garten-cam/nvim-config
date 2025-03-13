return {
	{
		"nvzone/typr",
		dependencies = "nvzone/volt",
		opts = {},
		cmd = { "Typr", "TyprStats" },
	},
	{
		"nvzone/volt",
		{ "nvzone/timerly", cmd = "TimerlyToggle" },
	},
}
