tests
testNeighbours
	|mapModel tileX tileY neighbours|
	mapModel := MapModel new.
	tileX := 3.
	tileY := 5.
	neighbours := mapModel neighbours: (mapModel tiles at: tileX at:tileY).
	self assert: neighbours size equals: 4.
	self assert: (neighbours at:1) equals: (mapModel tiles at: tileX+1 at:tileY).
	self assert: (neighbours at:2) equals: (mapModel tiles at: tileX-1 at:tileY).
	self assert: (neighbours at:3) equals: (mapModel tiles at: tileX at:tileY+1).
	self assert: (neighbours at:4) equals: (mapModel tiles at: tileX at:tileY-1). 
	