accessing
calculateIndex: pos
	Transcript show: pos posX; show: pos posY; cr.
	^ 1 + pos posY + (pos posX * (self gridSize + 1) )