helper methods
tryMove: dir
	^ (levelPos + dir) cell stepHere: dir