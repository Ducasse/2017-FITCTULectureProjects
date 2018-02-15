run
startRow: row column: col
	found := ((row == targetRow) & (col == targetColumn)).
	isRunning := found not.

	pathMatrix := Matrix rows: (tilemap rows) columns: (tilemap columns) element: (0,0).
	
	self startRow: row.
	self startColumn: col.
	self init.