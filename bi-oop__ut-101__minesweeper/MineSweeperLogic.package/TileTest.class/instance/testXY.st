tests
testXY
	| t |
	t := TileEmpty x: 4 y: 5.
	self assert: (t getCoordinate x) equals: 4.
	self assert: (t getCoordinate y) equals: 5. 