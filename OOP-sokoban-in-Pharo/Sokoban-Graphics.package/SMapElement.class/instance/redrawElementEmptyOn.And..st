operations
redrawElementEmptyOn: x And: y
	(tiles atWrap: (x - 1) * xMapSize + y) redrawEmpty
