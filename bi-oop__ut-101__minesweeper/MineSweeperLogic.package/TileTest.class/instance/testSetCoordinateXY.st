tests
testSetCoordinateXY
	| t |
	t := TileEmpty x: 4 y: 5.
	t setCoordinateX: 6 Y: 7. 
	self assert: (t getCoordinate x) equals: 6.
	self assert: (t getCoordinate y) equals: 7. 