return {
	s(
		{ trig = "fig", snippetType = "snippet", dscr = "A basic figure environment" },
		fmta(
			[[
        \begin{figure}
        \centering
        \includegraphics[width=<>\linewidth]{./figures/<>}
        \caption{<>}
        \label{fig:<>}
        \end{figure}

        ]],
			{ i(1, "width"), i(2, "filename"), i(3, "captionText"), i(4, "figureLabel") }
		)
	),
}
