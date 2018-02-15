initialization
testPacmanDirRight
	| x1 x2 y1 y2 |
	x1 := game pacman x.
	y1 := game pacman y.
	game pacman moveRight.
	x2 := game pacman x.
	y2 := game pacman y.
	self assert: (x1+1) equals: x2.
	self assert: y1 equals: y2.