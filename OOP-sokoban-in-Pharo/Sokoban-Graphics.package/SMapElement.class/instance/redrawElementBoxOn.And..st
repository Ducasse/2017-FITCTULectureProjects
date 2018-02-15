operations
redrawElementBoxOn: x And: y
	(tiles atWrap: (x - 1) * xMapSize + y) redrawWithBox
