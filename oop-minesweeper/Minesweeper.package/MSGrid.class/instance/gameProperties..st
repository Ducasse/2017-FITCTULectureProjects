accessing
gameProperties: gp
	gameProps := gp.
	grid := Matrix rows: (gameProps size x) columns: (gameProps size y) element: (MSNumberField new).